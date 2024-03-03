"""
This script is intended for VL dataloader

author: Panwang Xia.
"""

from __future__ import annotations

import json
import os
import struct
import shutil
import sys
from contextlib import ExitStack
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any, Dict, List, Literal, Optional, Union

import mediapy as media
import numpy as np
import torch
import tyro
from jaxtyping import Float
from rich import box, style
from rich.panel import Panel
from rich.progress import (
    BarColumn,
    Progress,
    TaskProgressColumn,
    TextColumn,
    TimeElapsedColumn,
    TimeRemainingColumn,
)
from rich.table import Table
from torch import Tensor
from typing_extensions import Annotated

from nerfstudio.cameras.camera_paths import (
    get_interpolated_camera_path,
    get_path_from_json,
    get_spiral_path,
)
from nerfstudio.cameras.cameras import Cameras, CameraType
from nerfstudio.data.datamanagers.base_datamanager import VanillaDataManager
from nerfstudio.data.scene_box import SceneBox
from nerfstudio.model_components import renderers
from nerfstudio.pipelines.base_pipeline import Pipeline
from nerfstudio.utils import colormaps, install_checks
from nerfstudio.utils.eval_utils import eval_setup
from nerfstudio.utils.rich_utils import CONSOLE, ItersPerSecColumn
from nerfstudio.utils.scripts import run_command

import nerfstudio.cameras.camera_utils as camera_utils
import cv2
from skimage import io
from PIL import Image
import copy

# -- Global parameters
MAX_AUTO_RESOLUTION = 1600

CAMERA_MODEL_TO_TYPE = {
    "SIMPLE_PINHOLE": CameraType.PERSPECTIVE,
    "PINHOLE": CameraType.PERSPECTIVE,
    "SIMPLE_RADIAL": CameraType.PERSPECTIVE,
    "RADIAL": CameraType.PERSPECTIVE,
    "OPENCV": CameraType.PERSPECTIVE,
    "OPENCV_FISHEYE": CameraType.FISHEYE,
    "EQUIRECTANGULAR": CameraType.EQUIRECTANGULAR,
    "OMNIDIRECTIONALSTEREO_L": CameraType.OMNIDIRECTIONALSTEREO_L,
    "OMNIDIRECTIONALSTEREO_R": CameraType.OMNIDIRECTIONALSTEREO_R,
}


# -- functions --

def load_from_json(filename: Path):
    assert filename.split(".")[-1] == "json"
    with open(filename, encoding="UTF-8") as file:
        return json.load(file)


def get_fname(filepath: Path,
              data_dir: Path,
              downscale_factor=None,
              cfg_downscale_factor=None,
              downsample_folder_prefix="images_"):
    if downscale_factor is None:
        if cfg_downscale_factor is None:
            test_img = Image.open(data_dir / filepath)
            h, w = test_img.size
            max_res = max(h, w)
            df = 0
            while True:
                if (max_res / 2 ** (df)) < MAX_AUTO_RESOLUTION:
                    break
                if not (data_dir / f"{downsample_folder_prefix}{2 ** (df + 1)}" / filepath.name).exists():
                    break
                df += 1

            downscale_factor = 2 ** df
            # CONSOLE.log(f"Auto image downscale factor of {downscale_factor}")
        else:
            downscale_factor = cfg_downscale_factor

    if downscale_factor > 1:
        return data_dir / f"{downsample_folder_prefix}{downscale_factor}" / filepath.name, downscale_factor
    return data_dir / filepath, downscale_factor


def load_poses_from_json(camera_json_path, transform_json_path, downscale_factor=1):
    """

    Args:
        camera_json_path: camera poses json
        transform_json_path: file from pretrained file, do not generate a new one here, otherwise the pose will not match the scene coordinate.
        downscale_factor:

    Returns:

    """
    if camera_json_path.split("/")[-1].split("\\")[-1].split(".")[-1] == "json":
        meta = load_from_json(camera_json_path)
        data_dir = os.path.relpath(os.path.join(camera_json_path, ".."))
    else:
        meta = load_from_json(camera_json_path + "/transforms.json")
        data_dir = camera_json_path

    image_filenames = []
    mask_filenames = []
    depth_filenames = []
    poses = []
    num_skipped_image_filenames = 0

    fx_fixed = "fl_x" in meta
    fy_fixed = "fl_y" in meta
    cx_fixed = "cx" in meta
    cy_fixed = "cy" in meta
    height_fixed = "h" in meta
    width_fixed = "w" in meta
    distort_fixed = False
    for distort_key in ["k1", "k2", "k3", "p1", "p2"]:
        if distort_key in meta:
            distort_fixed = True  # -- The true value means all imgs share the same distortion parameters.
            break
    fx = []
    fy = []
    cx = []
    cy = []
    height = []
    width = []
    distort = []
    obs_images = []
    obs_images_ir = []

    for frame in meta["frames"]:
        filepath = Path(frame["file_path"])
        filepath_ir = Path("ir", Path(frame["file_path"]).name)
        data_dir = Path(data_dir)
        fname, downscale_factor = get_fname(filepath, data_dir, downscale_factor)  # _get_frame读取影像，获取信息

        """ load rgb image """
        image = io.imread(data_dir / filepath)[:, :, :3]
        image = cv2.resize(image, [int(image.shape[1] / downscale_factor), int(image.shape[0] / downscale_factor)],
                           interpolation=cv2.INTER_AREA)
        """ load ir image """
        try:
            image_ir = io.imread(data_dir.parent / filepath_ir)
            image_ir = cv2.resize(image_ir, [int(image_ir.shape[1] / downscale_factor),
                                             int(image_ir.shape[0] / downscale_factor)],
                                  interpolation=cv2.INTER_AREA)
        except:

            image_ir = np.ones([int(image.shape[0]),
                                int(image.shape[1])]) * 9999



        obs_images.append(image)
        obs_images_ir.append(image_ir)

        if not fname.exists():
            num_skipped_image_filenames += 1
            continue
        # 用for循环在这里读入了影像的 fl_x fl_y cx cy h w distort_matrix image_filenames poses mask_filenames depth_files
        if not fx_fixed:
            assert "fl_x" in frame, "fx not specified in frame"
            fx.append(float(frame["fl_x"]))
        if not fy_fixed:
            assert "fl_y" in frame, "fy not specified in frame"
            fy.append(float(frame["fl_y"]))
        if not cx_fixed:
            assert "cx" in frame, "cx not specified in frame"
            cx.append(float(frame["cx"]))
        if not cy_fixed:
            assert "cy" in frame, "cy not specified in frame"
            cy.append(float(frame["cy"]))
        if not height_fixed:
            assert "h" in frame, "height not specified in frame"
            height.append(int(frame["h"]))
        if not width_fixed:
            assert "w" in frame, "width not specified in frame"
            width.append(int(frame["w"]))
        if not distort_fixed:
            distort.append(
                camera_utils.get_distortion_params(
                    k1=float(frame["k1"]) if "k1" in frame else 0.0,
                    k2=float(frame["k2"]) if "k2" in frame else 0.0,
                    k3=float(frame["k3"]) if "k3" in frame else 0.0,
                    k4=float(frame["k4"]) if "k4" in frame else 0.0,
                    p1=float(frame["p1"]) if "p1" in frame else 0.0,
                    p2=float(frame["p2"]) if "p2" in frame else 0.0,
                )
            )

        image_filenames.append(fname)
        poses.append(np.array(frame["transform_matrix"]))
        if "mask_path" in frame:
            mask_filepath = Path(frame["mask_path"])
            mask_fname = get_fname(
                mask_filepath,
                data_dir,
                downsample_folder_prefix="masks_",
            )
            mask_filenames.append(mask_fname)

        if "depth_file_path" in frame:
            depth_filepath = Path(frame["depth_file_path"])
            depth_fname = get_fname(depth_filepath, data_dir, downsample_folder_prefix="depths_")
            depth_filenames.append(depth_fname)

    """ Notice: do not re-generate transform matrix and scale fator! """
    poses = torch.from_numpy(np.array(poses).astype(np.float32))
    transform_data = load_from_json(transform_json_path)
    transform_matrix, scale_factor = np.array(transform_data["transform"]), float(transform_data["scale"])
    transform_matrix = torch.tensor(np.vstack((transform_matrix, np.array([0, 0, 0, 1]))).astype(np.float32))
    poses = transform_matrix @ poses

    poses[:, :3, 3] *= scale_factor

    if "camera_model" in meta:
        camera_type = CAMERA_MODEL_TO_TYPE[meta["camera_model"]]
    else:
        camera_type = CameraType.PERSPECTIVE

    fx = float(meta["fl_x"]) if fx_fixed else torch.tensor(fx, dtype=torch.float32)
    fy = float(meta["fl_y"]) if fy_fixed else torch.tensor(fy, dtype=torch.float32)
    cx = float(meta["cx"]) if cx_fixed else torch.tensor(cx, dtype=torch.float32)
    cy = float(meta["cy"]) if cy_fixed else torch.tensor(cy, dtype=torch.float32)
    height = int(meta["h"]) if height_fixed else torch.tensor(height, dtype=torch.int32)
    width = int(meta["w"]) if width_fixed else torch.tensor(width, dtype=torch.int32)
    if distort_fixed:
        distortion_params = camera_utils.get_distortion_params(
            k1=float(meta["k1"]) if "k1" in meta else 0.0,
            k2=float(meta["k2"]) if "k2" in meta else 0.0,
            k3=float(meta["k3"]) if "k3" in meta else 0.0,
            k4=float(meta["k4"]) if "k4" in meta else 0.0,
            p1=float(meta["p1"]) if "p1" in meta else 0.0,
            p2=float(meta["p2"]) if "p2" in meta else 0.0,
        )
    else:
        distortion_params = torch.stack(distort, dim=0)

    cameras = Cameras(
        fx=fx,
        fy=fy,
        cx=cx,
        cy=cy,
        distortion_params=distortion_params,
        height=height,
        width=width,
        camera_to_worlds=poses[:, :3, :4],
        camera_type=camera_type,
    )

    assert downscale_factor is not None
    cameras.rescale_output_resolution(scaling_factor=1.0 / downscale_factor)

    return cameras, np.array(obs_images), np.array(obs_images_ir), 1 / scale_factor


# -- from metashape cs to nerfstudio cs
def metashapeCS2nerfCS(poses_meta, transform, scale):
    poses_nerf = transform @ poses_meta
    poses_nerf[:, :3, 3] *= scale

    return poses_nerf


# -- from nerfstudio cs to metashape cs
def nerfCS2metashapeCS(poses_nerf, transform, scale):
    poses_nerf[:, :3, 3] *= (1 / scale)
    poses_meta = np.linalg.inv(transform) @ poses_nerf

    return poses_meta


def render_current_pose(
        pipeline: Pipeline,
        cameras: Cameras,
        camera_idx,
        output_filename: Path, ):
    cameras.rescale_output_resolution(1.0)
    cameras = cameras.to(pipeline.device)

    # -- initialize the working space
    output_image_dir = output_filename.parent / output_filename.stem
    output_image_dir.mkdir(parents=True, exist_ok=True)

    # --
    aabb_box = None
    # aabb_scale = 1
    # aabb_box = SceneBox(
    #     aabb=torch.tensor(
    #         [[-aabb_scale, -aabb_scale, -aabb_scale], [aabb_scale, aabb_scale, aabb_scale]], dtype=torch.float32
    #     )
    # )


    # -- get ray bundle
    camera_ray_bundle = cameras.generate_rays(camera_indices=camera_idx, aabb_box=aabb_box,
                                              disable_distortion=False)
    # -- render
    with torch.no_grad():
        outputs = pipeline.model.get_outputs_for_camera_ray_bundle(camera_ray_bundle)

    # --
    # render_image_rgb = cv2.cvtColor((outputs['rgb'] * 255).detach().cpu().numpy().astype('uint8'), cv2.COLOR_RGB2BGR)
    render_image_rgb = (outputs['rgb'] * 255).detach().cpu().numpy().astype('uint8')
    render_image_depth = outputs['depth'].detach().cpu().numpy()

    if 0:  # -- for checking
        io.imsave(r"Visual_Localization/Workspace/rgb.png", render_image_rgb)
        # -- depth is multiplied by 10, intended for viewing...
        io.imsave(r"Visual_Localization/Workspace/depth.png", render_image_depth * 10)

    return render_image_rgb, render_image_depth
