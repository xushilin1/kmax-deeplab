CONFIG=$1
srun -p s1_mm_research --gres=gpu:8 --ntasks=32 --ntasks-per-node=8 \
    --cpus-per-task=5 --kill-on-bad-exit=1 --quotatype=auto \
    python -u train_net.py \
    --config-file  $CONFIG --launcher="slurm" 