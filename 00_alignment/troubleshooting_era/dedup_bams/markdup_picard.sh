#!/bin/bash
#SBATCH --job-name=markdup
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --time=23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/markdup_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/markdup_%A_%a.err
#SBATCH --array=1-2

# Removes PCR/optical duplicates from coordinate-sorted BAMs with Picard MarkDuplicates.
# To add more samples: add BAM file names to BAMS and raise --array to match (e.g. 1-5).

module load picard/2.25.1-Java-11
module load SAMtools/1.19.2

set -e

BAMDIR=/scratch/ak308/Dholes/00_alignment/bams
OUTDIR=/scratch/ak308/Dholes/00_alignment/dedup_bams
TMPDIR=/scratch/ak308/Dholes/00_alignment/dedup_bams/tmp
mkdir -p $OUTDIR $TMPDIR

BAMS=(Dhole_SO15487_India_wild.sorted.bam Dhole_USNM587829_SDZoo.sorted.bam)
# next batch, e.g.: Dhole_SAMEA8718191_merged.bam Dhole_SAMEA8718192_merged.bam Dhole_SAMN03168405_China_merged.bam

BAM=${BAMS[$SLURM_ARRAY_TASK_ID-1]}
NAME=${BAM%.bam}          # e.g. Dhole_SO15487_India_wild.sorted
NAME=${NAME%.sorted}      # e.g. Dhole_SO15487_India_wild

echo "Input: ${BAMDIR}/${BAM}"

java -Xmx28g -jar $EBROOTPICARD/picard.jar MarkDuplicates \
  INPUT=${BAMDIR}/${BAM} \
  OUTPUT=${OUTDIR}/${NAME}.dedup.bam \
  METRICS_FILE=${OUTDIR}/${NAME}.dedup_metrics.txt \
  REMOVE_DUPLICATES=true \
  ASSUME_SORT_ORDER=coordinate \
  TMP_DIR=$TMPDIR

samtools index -@ 4 ${OUTDIR}/${NAME}.dedup.bam
samtools flagstat -@ 4 ${OUTDIR}/${NAME}.dedup.bam > ${OUTDIR}/${NAME}.dedup.flagstat.txt

echo "Duplication rate (PERCENT_DUPLICATION column):"
grep -A 2 "^LIBRARY" ${OUTDIR}/${NAME}.dedup_metrics.txt
