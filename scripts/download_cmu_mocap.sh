#!/bin/bash

mkdir -p data/cmu_mocap && cd data/cmu_mocap

FILE=allasfamc.zip

if [ -f $FILE ]; then
  echo "File already exists ... "
  exit 0
 fi

echo "Downloading CMU MoCap (1.1G) ... "

wget http://mocap.cs.cmu.edu/allasfamc.zip -O $FILE

echo "Unzipping ... "

unzip $FILE

echo 'Done.'
