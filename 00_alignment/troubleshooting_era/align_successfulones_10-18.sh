#!/bin/bash
#SBATCH --job-name=alignment_sam
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=40G
#SBATCH --time=2-23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/alignment_Dhole_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/alignment_Dhole_%A_%a.err
#SBATCH --array=1-11%10
 
# Stop this task at the first failure
set -euo pipefail
 
echo "My SLURM_ARRAY_TASK_ID: ${SLURM_ARRAY_TASK_ID}"
 
# Only the 11 samples whose adapter trimming finished (_clean.json present).
# Still to add once re-downloaded and trimmed: ERR5906617, SRR32686212, SRR8049189
SAMPLES=(
    ERR5906615
    SRR2827618
    SRR2827619
    SRR2827620
    SRR2827621
    SRR2827622
    SRR2827623
    SRR2827624
    SRR2827625
    SRR2827626
    SRR40305703
)
RUN=${SAMPLES[$((SLURM_ARRAY_TASK_ID - 1))]}
SAMPLE=${RUN}   # SM tag; change if your other samples use individual names (column 4 of listfastqfiles.txt)
 
READ1=${RUN}_clean.r1.fastq.gz
READ2=${RUN}_clean.r2.fastq.gz
 
FASTQ_DIR=/scratch/ak308/Dholes/00_alignment/cleanedfastq
REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna
OUT_DIR=/scratch/ak308/Dholes/00_alignment/bams
 
echo "RUN:    ${RUN}"
echo "SAMPLE: ${SAMPLE}"
echo "READ1:  ${READ1}"
echo "READ2:  ${READ2}"
 
# Make sure trimming actually finished and both cleaned files exist
for f in ${RUN}_clean.json ${READ1} ${READ2}; do
    [ -s ${FASTQ_DIR}/${f} ] || { echo "ERROR: missing or empty ${FASTQ_DIR}/${f}"; exit 1; }
done
 
module purge
module load GCCcore/12.3.0
module load BWA/0.7.18
 
bwa mem \
    -M \
    -t ${SLURM_CPUS_PER_TASK} \
    -R "@RG\tID:${RUN}\tSM:${SAMPLE}\tPL:ILLUMINA" \
    ${REF} \
    ${FASTQ_DIR}/${READ1} \
    ${FASTQ_DIR}/${READ2} \
    > ${OUT_DIR}/${RUN}.sam
 
echo "Done: ${RUN}"
