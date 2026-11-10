#!/bin/bash
#SBATCH --job-name=dhole_xchr
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --mem=30G
#SBATCH --time=1:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/chrX_a.out
#SBATCH --error=/scratch/ak308/Dholes/output/chrX_a.err
#SBATCH --array=1-12%5

#1-89
module load SAMtools/1.19.2

echo "My SLURM_ARRAY_TASK_ID: " $SLURM_ARRAY_TASK_ID
BAM=$(sed "${SLURM_ARRAY_TASK_ID}q;d" /scratch/ak308/Dholes/00_alignment/bams/bam_list.txt | cut -f1)

DIR=/scratch/ak308/Dholes/00_alignment/bams
OUTDIR=/scratch/ak308/Dholes/Xchromosome

samtools view -b ${DIR}/${BAM} \
  NC_049260.1 \  #this is whatever the name of the chromosome of interest is
  -o ${OUTDIR}/${BAM}_chrX.bam

samtools index ${OUTDIR}/${BAM}_chrX.bam
