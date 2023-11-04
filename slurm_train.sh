srun -p s1_mm_research --gres=gpu:8 --ntasks=32 --ntasks-per-node=8 \
    --cpus-per-task=5 --kill-on-bad-exit=1 --quotatype=auto \
    python -u train_net.py \
    --configs  configs/coco/panoptic_segmentation/kmax_r50.yaml --launcher="slurm" \
    OUTPUT_DIR: 'output/kmax_r50_150k' \