#!/bin/bash

#### This is script to develop model for segmentation task (Task 1) for .tok files 
#### Get the  base path upto the "data" folder as an argument (Eg: If the data folder is in the path /home/work/disrpt2025/data/ then the basepath_arg is /home/work/disrpt2025 )

basepath_arg="$1"


sh prepareTrainSegFiles.sh  $basepath_arg #seg_train.json
sh prepareDevSegFiles.sh $basepath_arg #seg_dev.json
# train program
python3 seg-task1-train-valdev-withseed.py  $basepath_arg/seg_train.json $basepath_arg/seg_dev.json
