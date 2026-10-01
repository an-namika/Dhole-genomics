#SBATCH --job-name=alignment_sam
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --mem=40G
#SBATCH --time=2-23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/alignment_Dhole_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/alignment_Dhole_%A_%a.err
#SBATCH --array=1

echo "My SLURM_ARRAY_TASK_ID: ${SLURM_ARRAY_TASK_ID}"

LIST=/scratch/ak308/Dholes/00_alignment/scripts/listfastqfiles.txt

READ1=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f1)
READ2=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f2)
RUN=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f3)
SAMPLE=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f4)

FASTQ_DIR=/scratch/ak308/Dholes/00_alignment/cleanedfastqs
REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna
OUT_DIR=/scratch/ak308/Dholes/00_alignment/bams

module purge
module load GCCcore/12.3.0
module load BWA/0.7.18

bwa mem \
  -M \
  -R "@RG\tID:${RUN}\tSM:${SAMPLE}\tPL:ILLUMINA" \
  ${REF} \
  ${FASTQ_DIR}/${READ1} \
  ${FASTQ_DIR}/${READ2} \
  > ${OUT_DIR}/${SAMPLE}.sam
