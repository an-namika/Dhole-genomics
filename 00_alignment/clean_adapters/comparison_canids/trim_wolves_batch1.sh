#!/bin/bash
#SBATCH --job-name=wolf_adapter_batch1
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=40G
#SBATCH --time=23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/adapter_wolves_batch1_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/adapter_wolves_batch1_%A_%a.err
#SBATCH --array=1-10%5

# Adapter removal for the first 10 comparison canids (all md5-verified, md5_check_wolves.sh).
# (AdapterRemoval v3.0.1, defaults).

echo "My SLURM_ARRAY_TASK_ID: $SLURM_ARRAY_TASK_ID"

LIST=/scratch/ak308/Dholes/scripts/fastqlist_wolves_batch1.txt
DIR=/scratch/ak308/Dholes/00_alignment/publishedfastq
OUT=/scratch/ak308/Dholes/00_alignment/cleanedfastq

READ1=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f1)
READ2=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f2)
NAME=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f3)

echo "READ1: ${READ1}"
echo "READ2: ${READ2}"
echo "NAME:  ${NAME}"

/home/ak308/Software/adapterremoval-v3.0.1-linux-x86_64/adapterremoval3 \
    --in-file1 ${DIR}/${READ1} \
    --in-file2 ${DIR}/${READ2} \
    --out-prefix ${OUT}/${NAME}_clean \
    --threads 8

ls -lh ${OUT}/${NAME}_clean*
