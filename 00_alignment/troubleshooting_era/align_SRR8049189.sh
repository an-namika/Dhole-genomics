#!/bin/bash
#SBATCH --job-name=alignment_SRR8049189
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=40G
#SBATCH --time=2-23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/alignment_SRR8049189_%j.out
#SBATCH --error=/scratch/ak308/Dholes/output/alignment_SRR8049189_%j.err
  
RUN=SRR8049189
SAMPLE=SRR8049189   # change to the individual/sample name if your other samples use one (column 4 of listfastqfiles.txt)
 
READ1=${RUN}_clean.r1.fastq.gz
READ2=${RUN}_clean.r2.fastq.gz
 
FASTQ_DIR=/scratch/ak308/Dholes/00_alignment/cleanedfastq
REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna
OUT_DIR=/scratch/ak308/Dholes/00_alignment/bams
 
echo "RUN:    ${RUN}"
echo "SAMPLE: ${SAMPLE}"
echo "READ1:  ${READ1}"
echo "READ2:  ${READ2}"
 
module purge
module load GCCcore/12.3.0
module load BWA/0.7.18
 
bwa mem \
  -t ${SLURM_CPUS_PER_TASK} \
  -M \
  -R "@RG\tID:${RUN}\tSM:${SAMPLE}\tPL:ILLUMINA" \
  ${REF} \
  ${FASTQ_DIR}/${READ1} \
  ${FASTQ_DIR}/${READ2} \
  > ${OUT_DIR}/${RUN}.sam
 
echo "Done: ${RUN}"
