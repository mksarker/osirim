#!/bin/sh              
#SBATCH --job-name=EGO_OBJECT
#SBATCH --output=/projets/thesepizenberg/EGO_OBJECT/code/food101/logs/%j.out
#SBATCH --error=/projets/thesepizenberg/EGO_OBJECT/code/food101/logs/%j.out
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=9000
#SBATCH --cpus-per-task=8
#SBATCH --partition=GPUNodes
#SBATCH --gres=gpu:4
#SBATCH --gres-flags=enforce-binding

BASE_PATH="/projets/thesepizenberg/EGO_OBJECT/code/food101"

srun singularity exec /logiciels/containerCollections/CUDA10/pytorch.sif /projets/thesepizenberg/EGO_OBJECT/enviroment/msarker/bin/python "$BASE_PATH/main.py"


