#!/bin/bash
#SBATCH --job-name=dhole_adapter_SE
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --mem=40G
#SBATCH --time=13:00:00
#SBATCH --output=/home/ak308/Dholes/output/adapter_SE_%A_%a.out
#SBATCH --error=/home/ak308/Dholes/output/adapter_SE_%A_%a.err
#SBATCH --array=1-2
 
echo "My SLURM_ARRAY_TASK_ID: $SLURM_ARRAY_TASK_ID"
 
DIR=/scratch/ak308/Dholes/00_alignment/publishedfastqs
OUT=/scratch/ak308/Dholes/00_alignment/cleanedfastq
 
SAMPLES=(SRR8472966 SRR8472967)
NAME=${SAMPLES[$((SLURM_ARRAY_TASK_ID - 1))]}
READ1=${NAME}.fastq.gz
 
echo "READ1: ${READ1}"
echo "NAME:  ${NAME}"
 
/scratch/lh106/software/adapterremoval-v3.0.1-linux-x86_64/adapterremoval3 \
    --in-file1 ${DIR}/${READ1} \
    --out-prefix ${OUT}/${NAME}_clean
