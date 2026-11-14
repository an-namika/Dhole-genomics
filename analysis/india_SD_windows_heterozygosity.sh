#!/bin/bash
#SBATCH --job-name=het_windows
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=4:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/het_windows_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/het_windows_%A_%a.err
#SBATCH --array=1-2

eval "$(conda shell.bash hook)"
conda activate angsd_env

SAMPLES=(Dhole_SO15487_India_wild Dhole_USNM587829_SDZoo)
SAMPLE=${SAMPLES[$SLURM_ARRAY_TASK_ID-1]}

WIN=100000

realSFS saf2theta ${SAMPLE}.saf.idx -sfs ${SAMPLE}.ml -outname $SAMPLE

thetaStat do_stat ${SAMPLE}.thetas.idx -win $WIN -step $WIN -outnames ${SAMPLE}.win

awk 'NR > 1 && $14 > 0 {print $2, $3, $5 / $14}' ${SAMPLE}.win.pestPG > ${SAMPLE}.win_het.txt
