#!/bin/bash
#SBATCH --job-name=realSFS_het
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=32G
#SBATCH --time=12:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/realSFS_het_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/realSFS_het_%A_%a.err
#SBATCH --array=1-2
# Runs ONLY realSFS + heterozygosity on the .saf files made by ANGSD 0.940
# (india_SD_heterozygosity_v3.sh, job 2770633).
# Whole-genome realSFS ran out of memory at 64G, so this version uses -nSites to
# estimate the SFS in blocks of 100 million sites. Each block is one line of expected
# counts (hom-ref, het, hom-alt); summing the blocks gives genome-wide totals.

module load GCC/14.3.0 angsd/0.940

set -e

cd /scratch/ak308/Dholes/01_heterozygosity

SAMPLES=(Dhole_SO15487_India_wild Dhole_USNM587829_SDZoo)
SAMPLE=${SAMPLES[$SLURM_ARRAY_TASK_ID-1]}
BLOCK=100000000

echo "Sample: $SAMPLE"

# one SFS line per 100-million-site block
realSFS ${SAMPLE}.saf.idx -P 8 -nSites $BLOCK > ${SAMPLE}.blocks.ml

if [ ! -s ${SAMPLE}.blocks.ml ]; then
    echo "ERROR: ${SAMPLE}.blocks.ml is empty" >&2
    exit 1
fi

# sum the blocks into one genome-wide SFS line (same format the windows script expects)
awk '{a+=$1; b+=$2; c+=$3} END {printf "%f %f %f\n", a, b, c}' ${SAMPLE}.blocks.ml > ${SAMPLE}.ml

# heterozygosity = het / total
awk '{print $2 / ($1 + $2 + $3)}' ${SAMPLE}.ml > ${SAMPLE}.het.txt

echo "Blocks:"; wc -l ${SAMPLE}.blocks.ml
echo "Genome-wide SFS:"; cat ${SAMPLE}.ml
echo "Heterozygosity:"; cat ${SAMPLE}.het.txt

Paste it into a new file in your scripts folder, then submit:

bash
nano realSFS_het_v3.sh     # paste, then Ctrl+O, Enter, Ctrl+X
sbatch --dependency=afterany:2770633 realSFS_het_v3.sh
