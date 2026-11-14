#!/bin/bash
#SBATCH --job-name=ROH_angsd
#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --time=24:00:00

# Usage: sbatch heterozygosity_angsd.sh <sample_name> <mean_depth>

SAMPLE=$1
MEAN=$2
REF=/path/to/dog_reference.fa

angsd -i ${SAMPLE}.sorted.bam -ref $REF -anc $REF -out $SAMPLE -P 8 \
  -GL 2 -doSaf 1 \
  -minMapQ 20 -minQ 20 \
  -only_proper_pairs 1 -uniqueOnly 1 -remove_bads 1 \
  -baq 1 -C 50 \
  -doCounts 1 -setMinDepth $((MEAN / 2)) -setMaxDepth $((MEAN * 2))

realSFS ${SAMPLE}.saf.idx > ${SAMPLE}.ml

awk '{print $2 / ($1 + $2 + $3)}' ${SAMPLE}.ml > ${SAMPLE}.het.txt
