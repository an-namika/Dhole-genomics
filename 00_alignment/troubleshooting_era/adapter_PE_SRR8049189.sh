#!/bin/bash
#SBATCH --job-name=dhole_adapter_PE
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=40G
#SBATCH --time=24:00:00
#SBATCH --output=/home/ak308/Dholes/output/adapter_PE_%j.out
#SBATCH --error=/home/ak308/Dholes/output/adapter_PE_%j.err
 
# Single paired-end sample, so no job array needed
 
DIR=/scratch/ak308/Dholes/00_alignment/publishedfastq
OUT=/scratch/ak308/Dholes/00_alignment/cleanedfastq
 
NAME=SRR8049189
READ1=${NAME}_1.fastq.gz
READ2=${NAME}_2.fastq.gz
 
echo "NAME:  ${NAME}"
echo "READ1: ${READ1}"
echo "READ2: ${READ2}"
 
/scratch/lh106/software/adapterremoval-v3.0.1-linux-x86_64/adapterremoval3 \
    --in-file1 ${DIR}/${READ1} \
    --in-file2 ${DIR}/${READ2} \
    --out-prefix ${OUT}/${NAME}_clean \
    --threads ${SLURM_CPUS_PER_TASK}
 
echo "Done: ${NAME}"
