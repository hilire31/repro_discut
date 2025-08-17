#!/bin/sh

#### This is the train data preparation for connective Identification (Task 2) for .tok files 
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

ext_arg=".tok" #or .tok
outpath_arg="./data_out" 

sh /projects/andiamo/froussea/repro_discut/connectiveIdentification-Task2/training-scripts/prepareTrainConnFiles.sh $ext_arg #or .tok
sh /projects/andiamo/froussea/repro_discut/connectiveIdentification-Task2/training-scripts/prepareDevConnFiles.sh $ext_arg #or .tok
#  DL/ML training program
python3 /projects/andiamo/froussea/repro_discut/connectiveIdentification-Task2/training-scripts/conn-task2-train-valdev-withseed.py  $outpath_arg/con_$ext_arg.train.json $outpath_arg/con_$ext_arg.train.json
