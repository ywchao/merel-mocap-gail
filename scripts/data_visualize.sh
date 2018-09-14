#!/bin/bash

cd baselines

python -m data.vis_cmu_mocap \
  --data_path ../data/cmu_mocap/all_asfamc \
  --save_path ../data/cmu_mocap_vis
