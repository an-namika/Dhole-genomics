#!/bin/bash
#SBATCH --job-name=het_windows
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=4:00:00

# Usage: sbatch heterozygosity_windows_angsd.sh <sample_name>

SAMPLE=$1
WIN=100000

# Run AFTER heterozygosity_angsd.sh, in the same folder --- see more belowww
# note that for this to work, it needs to be run AFTER TEMPLATE of heterozygosity_angsd.sh because angsd step: reuses ${SAMPLE}.saf.idx and ${SAMPLE}.ml from there...

realSFS saf2theta ${SAMPLE}.saf.idx -sfs ${SAMPLE}.ml -outname $SAMPLE

thetaStat do_stat ${SAMPLE}.thetas.idx -win $WIN -step $WIN -outnames ${SAMPLE}.win

awk 'NR > 1 && $14 > 0 {print $2, $3, $5 / $14}' ${SAMPLE}.win.pestPG > ${SAMPLE}.win_het.txt
