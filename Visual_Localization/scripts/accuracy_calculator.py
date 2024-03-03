# -- write a script to calculate VL results

import os
import numpy as np
from tqdm import *

file_path1 = r"/media/xiapanwang/主数据盘/xiapanwang/Codes/python/NeRFs/NS/NS/nerfstudio/Visual_Localization/Workspace/meeting-room/Nerfacto/SuperGlue/results_meeting-room-seq-3.txt"
file_path2 = file_path1.replace('3','4')
file_path3 = file_path1.replace('3','5')

def count_acc(file_path1, file_path2, file_path3):
    angel_errs = []
    trans_errs = []
    total_img_nums = 0

    with open(file_path1, 'r') as f:
        files = f.readlines()[2:]
        total_img_nums += len(files)
        for i in trange(len(files)):
            angel_err = float(files[i].split("  ")[1].split(":")[-1])
            trans_err = float(files[i].split("  ")[2].split(":")[-1])
            if not angel_err == 99999:
                angel_errs.append(angel_err)
                trans_errs.append(trans_err)

    with open(file_path2, 'r') as f:
        files = f.readlines()[2:]
        total_img_nums += len(files)
        for i in trange(len(files)):
            angel_err = float(files[i].split("  ")[1].split(":")[-1])
            trans_err = float(files[i].split("  ")[2].split(":")[-1])
            if not angel_err == 99999:
                angel_errs.append(angel_err)
                trans_errs.append(trans_err)

    with open(file_path3, 'r') as f:
        files = f.readlines()[2:]
        total_img_nums += len(files)
        for i in trange(len(files)):
            angel_err = float(files[i].split("  ")[1].split(":")[-1])
            trans_err = float(files[i].split("  ")[2].split(":")[-1])
            if not angel_err == 99999:
                angel_errs.append(angel_err)
                trans_errs.append(trans_err)

    assert len(angel_errs) == len(angel_errs)

    return angel_errs, trans_errs, total_img_nums


angel_errs, trans_errs, total_img_nums = count_acc(file_path1, file_path2, file_path3)

print(f"\n\n\navg_angel_loss = {np.median(np.array(angel_errs))} degree")
print(f"avg_trans_loss = {np.median(np.array(trans_errs))} meter")
print(f"success ratio = {(len(angel_errs)/total_img_nums)*100} %")