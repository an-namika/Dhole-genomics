#!/bin/bash
#SBATCH --job-name=dhole_adapter
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --mem=40G
#SBATCH --time=13:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/adapter_%A_%a.out
#SBATCH --error=/scratch/YOUR_NETID/Dhole/slurmout/adapter_%A_%a.err
#SBATCH --array=1-20%10
 
echo "My SLURM_ARRAY_TASK_ID: $SLURM_ARRAY_TASK_ID"
 
# Tab-separated, no header: <read1 file> <read2 file> <sample name>
LIST=/scratch/YOUR_NETID/Dhole/publishedfastqs/fastqlist_pairs.txt
DIR=/scratch/YOUR_NETID/Dhole/publishedfastqs
OUT=/scratch/YOUR_NETID/Dhole/cleanedfastq
 
# Pull line number $SLURM_ARRAY_TASK_ID from the list, then take column 1, 2, 3
READ1=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f1)
READ2=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f2)
NAME=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f3)
 
echo "READ1: ${READ1}"
echo "READ2: ${READ2}"
echo "NAME:  ${NAME}"
 
# Software path left unchanged: this is a shared install in lh106's folder.
# If you get "Permission denied", install your own copy and point this at it.
/scratch/lh106/software/adapterremoval-v3.0.1-linux-x86_64/adapterremoval3 \
    --in-file1 ${DIR}/${READ1} \
    --in-file2 ${DIR}/${READ2} \
    --out-prefix ${OUT}/${NAME}_clean
