#!/bin/bash

if [ $# -le 0 ]; then
  seed=0
else
  seed=$1
fi

if [ $# -le 1 ]; then
  traj_limitation=-1
else
  traj_limitation=$2
fi

cd baselines

time python -m baselines.gail.run_mujoco \
  --env humanoid_CMU_run \
  --seed $seed \
  --expert_path ../data/cmu_mocap.npz \
  --out_base ../output \
  --traj_limitation $traj_limitation \
  --num_timesteps 50000000 \
  --obs_only
