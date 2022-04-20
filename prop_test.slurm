#! /bin/sh

#SBATCH --job-name=prop_test
#SBATCH --output=prop_test.out
#SBATCH --error=prop_test.err
#SBATCH --partition=studentbatch
#SBATCH --signal=USR1@120
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --gpus=1

python -m span_identification --config configs/si_config.yml --use_crf --do_predict --overwrite_cache
