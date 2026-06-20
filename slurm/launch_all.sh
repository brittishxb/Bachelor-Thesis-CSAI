#!/bin/bash
SIGNALS=("ACC" "TEMP" "BVP" "EDA")
for signal in "${SIGNALS[@]}"
do
   echo "Submitting job for: $signal"
   sbatch --job-name=WESAD_$signal \
          --partition=GPU \
          --gres=gpu:1 \
          --nodes=1 \
          --ntasks=1 \
          --cpus-per-task=4 \
          --mem=16G \
          --time=12:00:00 \
          --mail-type=END,FAIL \
          --mail-user=b.i.burgering@tilburguniversity.edu\
          --output=slurm_%j_$signal.out \
          --wrap="python class_run.py $signal"
done
