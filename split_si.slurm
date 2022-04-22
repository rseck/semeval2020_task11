#! /bin/sh

#SBATCH --job-name=split_si
#SBATCH --output=split_si.out
#SBATCH --error=split_si.err
#SBATCH --partition=studentbatch
#SBATCH --signal=USR1@120
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gpus=1

srun python -m span_identification --config configs/si_config.yml --split_dataset --overwrite_cache
