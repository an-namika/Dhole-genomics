#!/bin/bash
#SBATCH --job-name=het_angsd
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=64G
#SBATCH --time=23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/het_angsd_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/het_angsd_%A_%a.err
#SBATCH --array=1-2

#  cluster module ANGSD 0.940 (conda 0.933 realSFS segfaulted)
#  deduplicated BAMs (Picard MarkDuplicates, duplicates removed)

module load GCC/14.3.0 angsd/0.940

set -e

OUTDIR=/scratch/ak308/Dholes/01_heterozygosity/dedup_autosomes
mkdir -p $OUTDIR
cd $OUTDIR

SAMPLES=(Dhole_SO15487_India_wild Dhole_USNM587829_SDZoo)
DEPTHS=(8 9)    # whole-number mean depths after dedup, same order as SAMPLES (India 8.35, SD 9.28)

SAMPLE=${SAMPLES[$SLURM_ARRAY_TASK_ID-1]}
MEAN=${DEPTHS[$SLURM_ARRAY_TASK_ID-1]}

BAMDIR=/scratch/ak308/Dholes/00_alignment/dedup_bams
REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna
AUTOSOMES=/scratch/ak308/Dholes/02_rohan/autosomes.txt
BLOCK=100000000

echo "Sample: $SAMPLE  mean depth: $MEAN  min: $((MEAN / 2))  max: $((MEAN * 2))"

# Step 1: per-site allele frequency likelihoods (autosomes only)
angsd -i ${BAMDIR}/${SAMPLE}.dedup.bam -ref $REF -anc $REF -out $SAMPLE -P 8 \
  -rf $AUTOSOMES \
  -GL 1 -doSaf 1 \
  -minMapQ 20 -minQ 20 \
  -only_proper_pairs 1 -uniqueOnly 1 -remove_bads 1 \
  -baq 1 -C 50 \
  -doCounts 1 -setMinDepth $((MEAN / 2)) -setMaxDepth $((MEAN * 2))

# Step 2: single-sample SFS in blocks, then summed into one genome-wide line
realSFS ${SAMPLE}.saf.idx -P 8 -nSites $BLOCK > ${SAMPLE}.blocks.ml

if [ ! -s ${SAMPLE}.blocks.ml ]; then
    echo "ERROR: ${SAMPLE}.blocks.ml is empty" >&2
    exit 1
fi

awk '{a+=$1; b+=$2; c+=$3} END {printf "%f %f %f\n", a, b, c}' ${SAMPLE}.blocks.ml > ${SAMPLE}.ml

# Step 3: heterozygosity = het / total
awk '{print $2 / ($1 + $2 + $3)}' ${SAMPLE}.ml > ${SAMPLE}.het.txt

echo "Blocks:"; wc -l ${SAMPLE}.blocks.ml
echo "Genome-wide SFS:"; cat ${SAMPLE}.ml
echo "Heterozygosity:"; cat ${SAMPLE}.het.txt
