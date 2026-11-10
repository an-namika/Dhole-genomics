#!/bin/bash
#SBATCH --job-name=dhole_depth
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

LIST=/scratch/ak308/Dholes/00_alignment/bams/bam_list_merge.txt
OUT=/scratch/ak308/Dholes/00_alignment/bams/Dhole_SAMN03168405_China_merged.bam

samtools merge -b ${LIST} -o ${OUT}

samtools index "${OUT}

echo "Finished merging BAMs"
