#!/bin/bash
#SBATCH --job-name=FastSpeech2-Train
#SBATCH --gres=gpu:m60:1
#SBATCH -c20
#SBATCH --mem=20g
module load cuda/11.0
module load cudnn
conda activate venv3.8.10

# pip uninstall -y nvidia_cublas_cu11

# 1 WILL WORK
export PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python
setenv PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION python

python3 train.py -p config/LJSpeech/preprocess.yaml -m config/LJSpeech/model.yaml -t config/LJSpeech/train.yaml