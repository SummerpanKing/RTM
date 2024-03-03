echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "facility-room-Nerfacto"
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/nerfacto/2023-07-18_181901/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id night --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/nerfacto/2023-07-18_181901/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id night --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/nerfacto/2023-07-18_181901/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id night --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

