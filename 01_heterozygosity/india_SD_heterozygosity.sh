#!/bin/bash
#SBATCH --job-name=het_angsd
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --time=23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/het_angsd_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/het_angsd_%A_%a.err
#SBATCH --array=1-2

eval "$(conda shell.bash hook)"
conda activate angsd_env

cd /scratch/ak308/Dholes/01_heterozygosity

SAMPLES=(Dhole_SO15487_India_wild Dhole_USNM587829_SDZoo)
DEPTHS=(9 10)    # (India 8.6, SD 10.1)

SAMPLE=${SAMPLES[$SLURM_ARRAY_TASK_ID-1]}
MEAN=${DEPTHS[$SLURM_ARRAY_TASK_ID-1]}

BAMDIR=/scratch/ak308/Dholes/00_alignment/bams
REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna

angsd -i ${BAMDIR}/${SAMPLE}.sorted.bam -ref $REF -anc $REF -out $SAMPLE -P 8 \
  -GL 2 -doSaf 1 \
  -minMapQ 20 -minQ 20 \
  -only_proper_pairs 1 -uniqueOnly 1 -remove_bads 1 \
  -baq 1 -C 50 \
  -doCounts 1 -setMinDepth $((MEAN / 2)) -setMaxDepth $((MEAN * 2))

realSFS ${SAMPLE}.saf.idx > ${SAMPLE}.ml

awk '{print $2 / ($1 + $2 + $3)}' ${SAMPLE}.ml > ${SAMPLE}.het.txt
