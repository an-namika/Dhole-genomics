#!/bin/bash
#SBATCH --job-name=index_canfam
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=20G
#SBATCH --time=22:30:00
#SBATCH --output=/home/ak308/Dholes/output/bwa_index_%j.out
#SBATCH --error=/home/ak308/Dholes/output/bwa_index_%j.err

set -euo pipefail

module load GCCcore/12.3.0
module load BWA/0.7.18

REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna.gz

# module load ...   # e.g. module load GCC/12.2.0 BWA SAMtools

[[ -s "${REF}.bwt" ]] || bwa index ${REF}

module purge
module load GCC/13.2.0
module load SAMtools/1.19.2

[[ -s "${REF}.fai" ]] || samtools faidx ${REF}

DICT="${REF%.fasta}.dict"
[[ -s "$DICT" ]] || samtools dict "$REF" -o "$DICT"   # needed later for Picard/GATK

echo "Reference indexed:"
ls -lh "${REF}".{amb,ann,bwt,pac,sa,fai} "$DICT"
