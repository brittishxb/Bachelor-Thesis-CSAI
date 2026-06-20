#!/bin/bash
#SBATCH --job-name=baseline_test
#SBATCH --partition=GPU
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=16G
#SBATCH --time=05:00:00
#SBATCH --output=%j.out
#SBATCH --error=%j.err


# --- EMAIL NOTIFICATIONS ---
#SBATCH --mail-type=BEGIN,END,FAIL    # Send email when job begins, ends, or fails
#SBATCH --mail-user=b.i.burgering@tilburguniversity.edu 
# ---------------------------

#Load your environment
module load anaconda
source $(conda info --base)/etc/profile.d/conda.sh
conda activate wesad_thesis

#Run batch experiment
python batch_baselines.py