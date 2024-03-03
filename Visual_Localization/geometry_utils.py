"""
This script is intended for geometry part of visual localization task,
especially PnP solving task,
to fit the coordinates system that nerfstudio's using.

author: Panwang Xia.
"""

import numpy as np
from nerfstudio.cameras.cameras import Cameras, CameraType
import cv2
import math


def filter_matches_using_homography(mkpts1, mkpts2):
    # 计算单应关系
    H, mask = cv2.findHomography(mkpts1, mkpts2, cv2.RANSAC)

    # 根据掩膜（mask）过滤误匹配点
    mkpts1_filtered = []
    mkpts2_filtered = []
    for i in range(len(mask)):
        if mask[i] == 1:
            mkpts1_filtered.append(mkpts1[i])
            mkpts2_filtered.append(mkpts2[i])

    # 返回不离群的匹配点
    return np.array(mkpts1_filtered), np.array(mkpts2_filtered)


def generating_3d_pts(rays_o, rays_d, rays_depth):
    # 将列表转换为numpy数组
    origins = np.array(rays_o)
    directions = np.array(rays_d)

    # 计算深度对应的向量长度
    lengths = rays_depth

    # 计算3D点坐标
    #-- 从nerf训练的代码中看出来，深度是用direction * z_val，方向向量不用单位化。
    #-- 并且，从中也发现光线的采样方向是 + 运算。
    pts_3d = origins + directions * lengths #-- pts3d = origin + direction（不是单位向量） * depth(z_val)

    return np.array(pts_3d.tolist())

def get_rays_subpixel_np(
        pts,
        cameras: Cameras,
        camera_idx)->np.array:

    """
    Args:
        pts: matched points in rendered_rgb, [index_of_W, index_of_H] ([x, y])，x向右，y向下
        cameras: all images camera infos
        camera_idx: query image idx

    Returns:
        matched points pixels' origins and directions in form of numpy

    """
    camera_ray_bundle = cameras.generate_rays(camera_indices=camera_idx, aabb_box=None,
                                              disable_distortion=False)

    rays_o = (camera_ray_bundle.origins[pts[:, 1], pts[:, 0], :]).detach().cpu().numpy()
    rays_d = (camera_ray_bundle.directions[pts[:, 1], pts[:, 0], :]).detach().cpu().numpy()

    return rays_o, rays_d


def get_rays_depth_np(
        pts,
        depth_map)->np.array:

    """

    Args:
        pts: matched points in rendered_rgb, [index_of_W, index_of_H] ([x, y])，x向右，y向下
        depth_map: the same perspective as rendered_rgb image

    Returns:

    """
    coords = np.around(pts).astype(int)

    # 利用花式索引获取深度值
    depths = depth_map[coords[:, 1], coords[:, 0]]

    return depths


def  getAngleTranslationErr(c2w, c2w_gt):
    """
    This function is designed to count errors between c2w and c2w_gt.

    Args:
        c2w: current c2w
        c2w_gt: ground truth c2w

    Returns: errors of 6dof parameters

    """
    # 提取姿态矩阵 R 和平移向量 t
    R = c2w[:3, :3]
    t = c2w[:3, 3]

    R_gt = c2w_gt[:3, :3]
    t_gt = c2w_gt[:3, 3]

    # 计算旋转矩阵的欧拉角（弧度）
    phi, omega, kappa = rotationMatrixToEulerAngles(R)
    phi_gt, omega_gt, kappa_gt = rotationMatrixToEulerAngles(R_gt)

    # 将弧度转换为度数
    phi_deg = math.degrees(phi)
    omega_deg = math.degrees(omega)
    kappa_deg = math.degrees(kappa)
    phi_gt_deg = math.degrees(phi_gt)
    omega_gt_deg = math.degrees(omega_gt)
    kappa_gt_deg = math.degrees(kappa_gt)

    # 计算欧拉角误差（度数）
    phi_err = abs(phi_deg - phi_gt_deg) if abs(phi_deg - phi_gt_deg) < 300 else abs(abs(phi_deg - phi_gt_deg) - 360)
    omega_err = abs(omega_deg - omega_gt_deg) if abs(omega_deg - omega_gt_deg) < 300 else abs(
        abs(omega_deg - omega_gt_deg) - 360)
    kappa_err = abs(kappa_deg - kappa_gt_deg) if abs(kappa_deg - kappa_gt_deg) < 300 else abs(
        abs(kappa_deg - kappa_gt_deg) - 360)

    # 计算平移向量误差
    x_err = t[0] - t_gt[0]
    y_err = t[1] - t_gt[1]
    z_err = t[2] - t_gt[2]

    return phi_err, omega_err, kappa_err, x_err, y_err, z_err

def rotationMatrixToEulerAngles(R):
    """
    将旋转矩阵转换为欧拉角。

    Args:
        R: 旋转矩阵

    Returns:
        phi: 绕 X 轴的旋转角度（单位：弧度）
        omega: 绕 Y 轴的旋转角度（单位：弧度）
        kappa: 绕 Z 轴的旋转角度（单位：弧度）
    """
    sy = np.sqrt(R[0, 0] * R[0, 0] + R[1, 0] * R[1, 0])

    if sy < 1e-6:
        phi = np.arctan2(R[1, 2], R[1, 1])
        omega = np.arctan2(-R[2, 0], sy)
        kappa = 0.0
    else:
        phi = np.arctan2(R[2, 1], R[2, 2])
        omega = np.arctan2(-R[2, 0], sy)
        kappa = np.arctan2(R[1, 0], R[0, 0])

    return phi, omega, kappa

def eulerAnglesToRotationMatrix(theta_x, theta_y, theta_z):
    """

    Args:
        theta_x: rotation angel along x-axis
        theta_y: rotation angel along y-axis
        theta_z: rotation angel along z-axis

    Returns:

    """
    theta_x_rad = np.radians(theta_x)
    theta_y_rad = np.radians(theta_y)
    theta_z_rad = np.radians(theta_z)

    # 计算旋转矩阵
    rotation_x = np.array([[1, 0, 0],
                           [0, np.cos(theta_x_rad), -np.sin(theta_x_rad)],
                           [0, np.sin(theta_x_rad), np.cos(theta_x_rad)]])

    rotation_y = np.array([[np.cos(theta_y_rad), 0, np.sin(theta_y_rad)],
                           [0, 1, 0],
                           [-np.sin(theta_y_rad), 0, np.cos(theta_y_rad)]])

    rotation_z = np.array([[np.cos(theta_z_rad), -np.sin(theta_z_rad), 0],
                           [np.sin(theta_z_rad), np.cos(theta_z_rad), 0],
                           [0, 0, 1]])

    rotation_matrix = rotation_z @ rotation_y @ rotation_x

    return rotation_matrix


#-- 重投影函数
# def Reprojection(pts3d, K, pose):
#     #-- pose_regressed
#     pose_re = pose.detach().cpu().numpy()
#     pose_re = np.vstack((pose_re, np.array([[0, 0, 0, 1]])))
#     #--
#     pts2d=[]
#
#     for pt3d in pts3d:
#         #-- 空间点齐次化
#         pt3d_ho = np.hstack((pt3d, 1))
#         #-- 投影
#         pt2d_ho = np.dot(np.linalg.inv(pose_re), pt3d_ho)
#         #-- 归一化
#         pt2d_normal = pt2d_ho[:3]/(-1 * pt2d_ho[2])
#         #--
#         # pts[:, 0] - W * .5) / focal, -(pts[:, 1] - H * .5) / focal
#         pt2d = [int(pt2d_normal[0] * K[0, 0] + K[0, 2]), int(pt2d_normal[1] * K[1, 1] * (-1) + K[1, 2])]
#         pts2d.append(pt2d)
#
#     return np.array(pts2d)
#
#
# import cv2


import cv2


def Reprojection(pts3d, K, pose, k):
    # -- pose_regressed
    pose_re = pose.detach().cpu().numpy()
    pose_re = np.vstack((pose_re, np.array([[0, 0, 0, 1]])))

    # -- 畸变参数
    k1, k2, k3, p1, p2 = k

    # -- 投影前的归一化坐标
    pts2d_norm = []

    for pt3d in pts3d:
        # -- 空间点齐次化
        pt3d_ho = np.hstack((pt3d, 1))
        # -- 投影
        pt2d_ho = np.dot(np.linalg.inv(pose_re), pt3d_ho)
        # -- 归一化
        pt2d_norm = pt2d_ho[:3] / (-1 * pt2d_ho[2])
        pts2d_norm.append(pt2d_norm)

    # -- 转换为数组
    pts2d_norm = (np.array(pts2d_norm)[:, :2])[:, None, :]

    # -- 畸变校正
    # pts2d_undistorted = cv2.undistortPoints(pts2d_norm, K, np.array([k1, k2, p1, p2, k3]))

    pts2d_undistorted = pts2d_norm
    pts2d_undistorted = pts2d_undistorted.squeeze()

    # -- 像素坐标
    pts2d = np.round(pts2d_undistorted * np.array([K[0, 0], K[1, 1]]) + np.array([K[0, 2], K[1, 2]])).astype(int)

    return pts2d


# -- 计算DCRE(Dense Corresponding Re-Projection Error)
def DCRE(pts2d_set_1, pts2d_set_2, tole_error=0):
    diff = np.abs(pts2d_set_1 - pts2d_set_2)  # 计算元素的两个值之差的绝对值
    sum_diff = np.sum(diff, axis=1)  # 计算每行元素的两个值之差的绝对值之和
    positive_samples = np.sum(sum_diff <= tole_error * 2)  # 统计正样本数量
    total_samples = len(pts2d_set_1)  # 总样本数量
    positive_percentage = (positive_samples / total_samples) * 100  # 计算正样本百分比
    return positive_percentage