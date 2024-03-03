echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "activity-room-Nerfacto"
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/nerfacto/2023-07-20_175623/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/nerfacto/2023-07-20_175623/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/nerfacto/2023-07-20_175623/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/nerfacto/2023-07-20_175623/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/nerfacto/2023-07-20_175623/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/nerfacto/2023-07-20_175623/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/nerfacto/2023-07-20_175623/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/nerfacto/2023-07-20_175623/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/nerfacto/2023-07-20_175623/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "activity-room-Instant-NGP"
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/instant-ngp/2023-07-20_174416/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/instant-ngp/2023-07-20_174416/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/instant-ngp/2023-07-20_174416/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/instant-ngp/2023-07-20_174416/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/instant-ngp/2023-07-20_174416/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/instant-ngp/2023-07-20_174416/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/instant-ngp/2023-07-20_174416/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/instant-ngp/2023-07-20_174416/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/activity-room-seq-1-2/instant-ngp/2023-07-20_174416/config.yml --dataset-path data/scenes/ --scene-name activity-room --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace



echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "corner-Nerfacto"
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/nerfacto/2023-07-18_180838/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/nerfacto/2023-07-18_180838/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/nerfacto/2023-07-18_180838/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/nerfacto/2023-07-18_180838/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/nerfacto/2023-07-18_180838/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/nerfacto/2023-07-18_180838/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/nerfacto/2023-07-18_180838/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/nerfacto/2023-07-18_180838/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/nerfacto/2023-07-18_180838/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "corner-Instant-NGP"
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/instant-ngp/2023-07-18_175204/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/instant-ngp/2023-07-18_175204/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/instant-ngp/2023-07-18_175204/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/instant-ngp/2023-07-18_175204/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/instant-ngp/2023-07-18_175204/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/instant-ngp/2023-07-18_175204/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/instant-ngp/2023-07-18_175204/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/instant-ngp/2023-07-18_175204/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/corner-seq-1-2/instant-ngp/2023-07-18_175204/config.yml --dataset-path data/scenes/ --scene-name corner --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace



echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "dormitory-Nerfacto"
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/nerfacto/2023-07-19_142003/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/nerfacto/2023-07-19_142003/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/nerfacto/2023-07-19_142003/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/nerfacto/2023-07-19_142003/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/nerfacto/2023-07-19_142003/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/nerfacto/2023-07-19_142003/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/nerfacto/2023-07-19_142003/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/nerfacto/2023-07-19_142003/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/nerfacto/2023-07-19_142003/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "dormitory-Instant-NGP"
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/instant-ngp/2023-07-19_143109/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/instant-ngp/2023-07-19_143109/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/instant-ngp/2023-07-19_143109/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/instant-ngp/2023-07-19_143109/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/instant-ngp/2023-07-19_143109/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/instant-ngp/2023-07-19_143109/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/instant-ngp/2023-07-19_143109/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/instant-ngp/2023-07-19_143109/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/dormitory-seq-1-2/instant-ngp/2023-07-19_143109/config.yml --dataset-path data/scenes/ --scene-name dormitory --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace



echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "facility-room-Nerfacto"
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/nerfacto/2023-07-18_181901/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/nerfacto/2023-07-18_181901/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/nerfacto/2023-07-18_181901/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/nerfacto/2023-07-18_181901/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/nerfacto/2023-07-18_181901/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/nerfacto/2023-07-18_181901/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/nerfacto/2023-07-18_181901/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/nerfacto/2023-07-18_181901/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/nerfacto/2023-07-18_181901/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "facility-room-Instant-NGP"
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/instant-ngp/2023-07-18_182821/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/instant-ngp/2023-07-18_182821/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/instant-ngp/2023-07-18_182821/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/instant-ngp/2023-07-18_182821/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/instant-ngp/2023-07-18_182821/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/instant-ngp/2023-07-18_182821/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/instant-ngp/2023-07-18_182821/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/instant-ngp/2023-07-18_182821/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/facility-room-seq-1-2/instant-ngp/2023-07-18_182821/config.yml --dataset-path data/scenes/ --scene-name facility-room --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace



echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "libspace-Nerfacto"
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/nerfacto/2023-07-18_202253/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/nerfacto/2023-07-18_202253/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/nerfacto/2023-07-18_202253/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/nerfacto/2023-07-18_202253/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/nerfacto/2023-07-18_202253/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/nerfacto/2023-07-18_202253/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/nerfacto/2023-07-18_202253/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/nerfacto/2023-07-18_202253/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/nerfacto/2023-07-18_202253/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "libspace-Instant-NGP"
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/instant-ngp/2023-07-18_183951/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/instant-ngp/2023-07-18_183951/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/instant-ngp/2023-07-18_183951/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/instant-ngp/2023-07-18_183951/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/instant-ngp/2023-07-18_183951/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/instant-ngp/2023-07-18_183951/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/instant-ngp/2023-07-18_183951/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/instant-ngp/2023-07-18_183951/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/libspace-seq-1-2/instant-ngp/2023-07-18_183951/config.yml --dataset-path data/scenes/ --scene-name libspace --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace



echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "living-room-Nerfacto"
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/nerfacto/2023-09-14_225118/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/nerfacto/2023-09-14_225118/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/nerfacto/2023-09-14_225118/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/nerfacto/2023-09-14_225118/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/nerfacto/2023-09-14_225118/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/nerfacto/2023-09-14_225118/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/nerfacto/2023-09-14_225118/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/nerfacto/2023-09-14_225118/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/nerfacto/2023-09-14_225118/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "living-room-Instant-NGP"
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/instant-ngp/2023-09-14_230023/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/instant-ngp/2023-09-14_230023/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/instant-ngp/2023-09-14_230023/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/instant-ngp/2023-09-14_230023/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/instant-ngp/2023-09-14_230023/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/instant-ngp/2023-09-14_230023/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/instant-ngp/2023-09-14_230023/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/instant-ngp/2023-09-14_230023/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/living-room-seq-1-2/instant-ngp/2023-09-14_230023/config.yml --dataset-path data/scenes/ --scene-name living-room --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace



echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "meeting-room-Nerfacto"
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/nerfacto/2023-07-18_221144/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/nerfacto/2023-07-18_221144/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/nerfacto/2023-07-18_221144/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/nerfacto/2023-07-18_221144/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/nerfacto/2023-07-18_221144/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/nerfacto/2023-07-18_221144/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/nerfacto/2023-07-18_221144/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/nerfacto/2023-07-18_221144/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/nerfacto/2023-07-18_221144/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Nerfacto --output-path Visual_Localization/Workspace

echo "-------------------------------------------------------------------------------------------------------------------------------------------"
echo "meeting-room-Instant-NGP"
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/instant-ngp/2023-07-18_220003/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 3 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/instant-ngp/2023-07-18_220003/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 4 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/instant-ngp/2023-07-18_220003/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 5 --MATCH-ALGORITHM LoFTR --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/instant-ngp/2023-07-18_220003/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 3 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/instant-ngp/2023-07-18_220003/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 4 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/instant-ngp/2023-07-18_220003/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 5 --MATCH-ALGORITHM SuperGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace

python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/instant-ngp/2023-07-18_220003/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 3 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/instant-ngp/2023-07-18_220003/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 4 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace
python Visual_Localization/VL_main.py camera-path --load-config outputs/meeting-room-seq-1-2/instant-ngp/2023-07-18_220003/config.yml --dataset-path data/scenes/ --scene-name meeting-room --sequence-id 5 --MATCH-ALGORITHM LightGlue --NERF-ALGORITHM Instant-NGP --output-path Visual_Localization/Workspace



echo "finished"




