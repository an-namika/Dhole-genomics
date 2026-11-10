#!/bin/bash
#SBATCH --job-name=xchr_depth
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=40G
#SBATCH --time=23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/check_depth_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/check_depth_%A_%a.err
#SBATCH --array=1-12%10

set -euo pipefail

module purge
module load GCC/13.2.0
module load SAMtools/1.19.2

echo "My SLURM_ARRAY_TASK_ID: $SLURM_ARRAY_TASK_ID"

DIR=/scratch/ak308/Dholes/Xchromosome
OUTDIR=/scratch/ak308/Dholes/00_alignment/depth
LIST=${DIR}/bamlist_chrX.txt

mkdir -p "$OUTDIR"

BAM=$(sed -n "${SLURM_ARRAY_TASK_ID}p" "$LIST" | cut -f1)

echo "Processing: $BAM"

samtools depth -a -@ "${SLURM_CPUS_PER_TASK}" "${DIR}/${BAM}" |
    awk '{sum+=$3; cnt++} END {if(cnt>0) print sum/cnt; else print "NA"}' \
    > "${OUTDIR}/${BAM}_average_depth_chrX.txt"

echo "Finished: $BAM"
