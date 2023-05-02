#!/bin/bash
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --gres=gpu:1,vmem:15g
#SBATCH --cpus-per-task=40
#SBATCH --mem=64g
module load cuda/11.3
module load cudnn
conda activate venv3.8.10

# pip uninstall -y nvidia_cublas_cu11

python3 train.py -p config/LJSpeech/preprocess.yaml -m config/LJSpeech/model.yaml -t config/LJSpeech/train.yaml