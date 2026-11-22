#!/bin/bash
#SBATCH --job-name=rohan
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=32G
#SBATCH --time=2-23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/rohan_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/rohan_%A_%a.err
#SBATCH --array=1-2

ROHAN=/home/ak308/Software/ROHan/bin/rohan
BAMDIR=/scratch/ak308/Dholes/00_alignment/dedup_bams
REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna
AUTOSOMES=/scratch/ak308/Dholes/02_rohan/autosomes.txt
OUTDIR=/scratch/ak308/Dholes/02_rohan

SAMPLES=(Dhole_SO15487_India_wild Dhole_USNM587829_SDZoo)
SAMPLE=${SAMPLES[$SLURM_ARRAY_TASK_ID-1]}

cd $OUTDIR
echo "Sample: $SAMPLE ($(date))"

$ROHAN \
  -t 8 \
  --name ${SAMPLE} \
  --auto ${AUTOSOMES} \
  -o ${OUTDIR}/${SAMPLE} \
  ${REF} \
  ${BAMDIR}/${SAMPLE}.dedup.bam

echo "Done ${SAMPLE} ($(date))"
cat ${OUTDIR}/${SAMPLE}.summary.txt
