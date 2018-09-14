#!/bin/bash

if [ $# -le 1 ]; then
    echo "Expecting at least two arguments (model path, visualization path)."
fi

if [ $# -le 2 ]; then
  seed=0
else
  seed=$3
fi

if [ $# -le 3 ]; then
  traj_limitation=-1
else
  traj_limitation=$4
fi

cd baselines

python -m baselines.gail.vis_model \
  --env humanoid_CMU_run \
  --seed $seed \
  --expert_path ../data/cmu_mocap.npz \
  --load_model_path ../$1 \
  --traj_limitation $traj_limitation \
  --vis_path ../$2
