#!/bin/bash

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

sh ./inference-scripts/testConn_tok.sh  
echo "Finished running inference scripts"
sh all_test_2024.sh .tok
echo "Finished running all test scripts"