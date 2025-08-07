#!/bin/sh

#### This is script to develop model for segmentation task (Task 1) for .tok files 
#### Get the  base path upto the "data" folder as an argument (Eg: If the data folder is in the path /home/work/disrpt2025/data/ then the basepath_arg is /home/work/disrpt2025 )

#SBATCH --job-name=discutsdisrupt
#SBATCH --output=logs/launcher-%j.out
#SBATCH --error=logs/launcher-%j.err

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --partition=GPUNodes
#SBATCH --gres=gpu:1
#SBATCH --gres-flags=enforce-binding

export HF_DATASETS_CACHE="/home/froussea/.cache/huggingface/datasets/cache_job_$SLURM_JOB_ID"

nvidia-smi
# Spécifie l’environnement Python à utiliser
export ENV=/projects/andiamo/froussea/venv/bin/python
# Spécifie l'emplacement de la singularité
export SING=/apps/containerCollections/CUDA12/pytorch2-NGC-24-02.sif

# Crée le dossier de logs si nécessaire
mkdir -p logs


sh ./training-scripts/prepareTrainSegFiles.sh  #seg_train.json
sh ./training-scripts/prepareDevSegFiles.sh #seg_dev.json
# train program
#python3 seg-task1-train-valdev-withseed.py  $basepath_arg/seg_train.json $basepath_arg/seg_dev.json
