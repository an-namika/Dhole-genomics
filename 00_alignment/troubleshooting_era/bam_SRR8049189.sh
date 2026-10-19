#!/bin/bash
#SBATCH --job-name=bam_SRR8049189
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --mem=40G
#SBATCH --cpus-per-task=16
#SBATCH --time=2-23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/bam_SRR8049189_%j.out
#SBATCH --error=/scratch/ak308/Dholes/output/bam_SRR8049189_%j.err
 
set -euo pipefail
 
RUN=SRR8049189
OUT_DIR=/scratch/ak308/Dholes/00_alignment/bams
 
echo "RUN: ${RUN}"
 
module purge
module load GCC/13.2.0
module load SAMtools/1.19.2
 
# SAM -> coordinate-sorted BAM
samtools view \
    -@ ${SLURM_CPUS_PER_TASK} \
    -b ${OUT_DIR}/${RUN}.sam | \
samtools sort \
    -@ ${SLURM_CPUS_PER_TASK} \
    -T ${OUT_DIR}/${RUN}.tmp \
    -o ${OUT_DIR}/${RUN}.sorted.bam
 
# Index
samtools index \
    -@ ${SLURM_CPUS_PER_TASK} \
    ${OUT_DIR}/${RUN}.sorted.bam
 
# Quick sanity check: mapping summary goes to a text file
samtools flagstat \
    -@ ${SLURM_CPUS_PER_TASK} \
    ${OUT_DIR}/${RUN}.sorted.bam \
    > ${OUT_DIR}/${RUN}.sorted.flagstat.txt
 
echo "Done: ${RUN}"
