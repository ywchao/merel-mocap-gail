#!/bin/bash

cd baselines

python -m data.collect_cmu_mocap \
  --data_path ../data/cmu_mocap/all_asfamc \
  --save_file ../data/cmu_mocap.npz
