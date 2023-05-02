#!/bin/bash
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --gres=gpu:1,vmem:15g
#SBATCH --cpus-per-task=40
#SBATCH --mem=64g
module load cuda/11.3
module load cudnn
source /cs/labs/adiyoss/amitroth/FastSpeech/venv3.8.10/bin/activate.csh

# pip uninstall -y nvidia_cublas_cu11

python3 python3 preprocess.py config/LJSpeech/preprocess.yaml