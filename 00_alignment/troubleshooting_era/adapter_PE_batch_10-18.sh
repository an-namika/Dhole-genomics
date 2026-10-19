#!/bin/bash
#SBATCH --job-name=dhole_adapter_PE
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=40G
#SBATCH --time=24:00:00
#SBATCH --output=/home/ak308/Dholes/output/adapter_PE_%A_%a.out
#SBATCH --error=/home/ak308/Dholes/output/adapter_PE_%A_%a.err
#SBATCH --array=1-13
 
# Stop this task at the first failure
set -euo pipefail
 
echo "My SLURM_ARRAY_TASK_ID: ${SLURM_ARRAY_TASK_ID}"
 
DIR=/scratch/ak308/Dholes/00_alignment/publishedfastq
OUT=/scratch/ak308/Dholes/00_alignment/cleanedfastq
 
SAMPLES=(
    ERR5906615
    ERR5906617
    SRR2827618
    SRR2827619
    SRR2827620
    SRR2827621
    SRR2827622
    SRR2827623
    SRR2827624
    SRR2827625
    SRR2827626
    SRR32686212
    SRR40305703
    SRR8049189
)
NAME=${SAMPLES[$((SLURM_ARRAY_TASK_ID - 1))]}
READ1=${NAME}_1.fastq.gz
READ2=${NAME}_2.fastq.gz
 
echo "NAME:  ${NAME}"
echo "READ1: ${READ1}"
echo "READ2: ${READ2}"
 
# 1. Check both input files are intact gzip before trimming
#    (catches truncated downloads before wasting hours on them)
echo "Checking gzip integrity..."
gzip -t ${DIR}/${READ1} || { echo "ERROR: ${READ1} is corrupt or truncated"; exit 1; }
gzip -t ${DIR}/${READ2} || { echo "ERROR: ${READ2} is corrupt or truncated"; exit 1; }
echo "gzip OK for both files"
 
# 2. Remove any old/partial outputs for THIS sample only
rm -f ${OUT}/${NAME}_clean*
 
# 3. Trim adapters
/scratch/lh106/software/adapterremoval-v3.0.1-linux-x86_64/adapterremoval3 \
    --in-file1 ${DIR}/${READ1} \
    --in-file2 ${DIR}/${READ2} \
    --out-prefix ${OUT}/${NAME}_clean \
    --threads ${SLURM_CPUS_PER_TASK}
 
echo "Done: ${NAME}"
