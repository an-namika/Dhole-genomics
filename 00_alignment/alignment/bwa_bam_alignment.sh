#!/bin/bash
#SBATCH --job-name=dhole_bams
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --mem=40G
#SBATCH --cpus-per-task=16
#SBATCH --time=2-23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/alignment_Dhole_bam.out
#SBATCH --error=/scratch/ak308/Dholes/output/alignment_Dhole_bam.err
#SBATCH --array=1-30

echo "My SLURM_ARRAY_TASK_ID: ${SLURM_ARRAY_TASK_ID}"

LIST=/scratch/ak308/Dholes/00_alignment/scripts/listfastqfiles.txt

READ1=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f1)
READ2=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f2)
RUN=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f3)
SAMPLE=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f4)

FASTQ_DIR=/scratch/lh106/GoldenJackal/cleaned_fastqs
REF=/scratch/lh106/GoldenJackal/RefGenome/GCF_053574225.1_VMU_Caureus_v.1.0_genomic.fna
OUT_DIR=/scratch/lh106/GoldenJackal/bams

module purge
module load GCCcore/12.3.0
module load BWA/0.7.18

#bwa mem \
#    -M \
#    -t 16 \
#    -R "@RG\tID:${RUN}\tSM:${SAMPLE}\tPL:ILLUMINA" \
#    ${REF} \
#    ${FASTQ_DIR}/${READ1} \
#    ${FASTQ_DIR}/${READ2} \
#    > ${OUT_DIR}/${SAMPLE}.sam

module purge
module load GCC/13.2.0
module load SAMtools/1.19.2

samtools view \
    -bS ${OUT_DIR}/${SAMPLE}.sam | \
samtools sort \
    -o ${OUT_DIR}/${SAMPLE}.sorted.bam

samtools index \
    ${OUT_DIR}/${SAMPLE}.sorted.bam
