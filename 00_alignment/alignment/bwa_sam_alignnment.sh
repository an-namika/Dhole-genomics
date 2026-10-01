#SBATCH --job-name=alignment_sam
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --mem=40G
#SBATCH --time=2-23:00:00
#SBATCH --output=/scratch/lh106/GoldenJackal/slurmout/alignment_GoldenJackal_.out
#SBATCH --error=/scratch/lh106/GoldenJackal/slurmout/alignment_GoldenJackal_.err
#SBATCH --array=1

echo "My SLURM_ARRAY_TASK_ID: ${SLURM_ARRAY_TASK_ID}"

LIST=/scratch/lh106/GoldenJackal/scripts/listfastqfiles.txt

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

bwa mem \
  -M \
  -R "@RG\tID:${RUN}\tSM:${SAMPLE}\tPL:ILLUMINA" \
  ${REF} \
  ${FASTQ_DIR}/${READ1} \
  ${FASTQ_DIR}/${READ2} \
  > ${OUT_DIR}/${SAMPLE}.sam
