#!/bin/bash
#SBATCH --job-name=fastq_download
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=14:00:00
#SBATCH --mem=1G
#SBATCH --array=1-6                  # 62 active files, max 6 downloading at once (suggested to not overload system?)
#SBATCH --output=/home/ak308/Dholes/output/fastq_dl_%A_%a.out
#SBATCH --error=/home/ak308/Dholes/output/fastq_dl_%A_%a.err

echo "My SLURM_ARRAY_TASK_ID: ${SLURM_ARRAY_TASK_ID}"

LIST="/scratch/ak308/Dholes/00_alignment/fastq_list_firstsix.tsv"

NAME=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f1)
URL=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f2)

wget ${URL}
