#!/bin/bash

#### This is the train data preparation for connective Identification (Task 2) for .tok files 
#### Get the  base path upto the "data" folder as an argument (Eg: If the data folder is in the path /home/work/disrpt2025/data/ then the basepath_arg is /home/work/disrpt2025 )

basepath_arg="$1"

sh prepareTrainConnFiles.sh $basepath_arg  #conn_train2.json
sh prepareDevConnFiles.sh  $basepath_arg #conn_dev.json
#  DL/ML training program
python3 conn-task2-train-valdev-withseed.py  $basepath_arg/conn_train2.json $basepath_arg/conn_dev.json
