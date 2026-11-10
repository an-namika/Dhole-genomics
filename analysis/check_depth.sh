#!/bin/bash
#SBATCH --job-name=merge_fox_bams
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=40G
#SBATCH --time=23:00:00
#SBATCH --output=/scratch/lh106/Indianfox/slurmout/merge_bams_%A_%a.out
#SBATCH --error=/scratch/lh106/Indianfox/slurmout/merge_bams_%A_%a.err
#SBATCH --array=1-80%10

module purge
module load GCC/13.2.0
module load SAMtools/1.19.2

echo “My SLURM_ARRAY_TASK_ID: $SLURM_ARRAY_TASK_ID”

DIR=/scratch/lh106/Indianfox/bams_autosomes
BAM=/scratch/lh106/Indianfox/bams_autosomes/list.txt
OUTDIR=/scratch/lh106/Indianfox/depth

samtools depth -a ${DIR}/${BAM} | awk ‘{sum+=$3; cnt++} END {print sum/cnt}’ > ${OUTDIR}/${BAM}_average_depth.txt
