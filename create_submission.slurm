#! /bin/sh

#SBATCH --job-name=creat_submission
#SBATCH --output=creat_submission.out
#SBATCH --error=creat_submission.err
#SBATCH --partition=studentbatch
#SBATCH --signal=USR1@120
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gpus=1

python -m span_identification --config configs/si_config.yml --create_submission_file
