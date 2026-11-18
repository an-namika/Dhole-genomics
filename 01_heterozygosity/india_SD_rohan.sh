#!/bin/bash
#SBATCH --job-name=rohan
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --time=23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/rohan_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/rohan_%A_%a.err
#SBATCH --array=1-2

cd /scratch/ak308/Dholes/02_rohan

SAMPLES=(Dhole_SO15487_India_wild Dhole_USNM587829_SDZoo)
SAMPLE=${SAMPLES[$SLURM_ARRAY_TASK_ID-1]}

ROHAN=/home/ak308/Software/ROHan/bin/rohan
BAMDIR=/scratch/ak308/Dholes/00_alignment/bams
REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna
AUTO=/scratch/ak308/Dholes/02_rohan/autosomes.txt

$ROHAN -t 8 --rohmu 2e-5 --auto $AUTO -o $SAMPLE $REF ${BAMDIR}/${SAMPLE}.sorted.bam
