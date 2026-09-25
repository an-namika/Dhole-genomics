#!/bin/bash
#SBATCH --job-name=dhole_adapter_SE
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --mem=40G
#SBATCH --time=13:00:00
#SBATCH --output=/scratch/YOUR_NETID/Dhole/slurmout/adapter_SE_%A_%a.out
#SBATCH --error=/scratch/YOUR_NETID/Dhole/slurmout/adapter_SE_%A_%a.err
#SBATCH --array=1-2
 
echo "My SLURM_ARRAY_TASK_ID: $SLURM_ARRAY_TASK_ID"
 
DIR=/scratch/YOUR_NETID/Dhole/publishedfastqs
OUT=/scratch/YOUR_NETID/Dhole/cleanedfastq
 
# Instead of a list file, the two sample names live in a bash array.
# Bash arrays count from 0, SLURM tasks from 1, hence the "- 1".
SAMPLES=(SRR8472966 SRR8472967)
NAME=${SAMPLES[$((SLURM_ARRAY_TASK_ID - 1))]}
READ1=${NAME}.fastq.gz
 
echo "READ1: ${READ1}"
echo "NAME:  ${NAME}"
 
# Same program as the paired script, but only --in-file1 (no mate file).
/scratch/lh106/software/adapterremoval-v3.0.1-linux-x86_64/adapterremoval3 \
    --in-file1 ${DIR}/${READ1} \
    --out-prefix ${OUT}/${NAME}_clean
 
