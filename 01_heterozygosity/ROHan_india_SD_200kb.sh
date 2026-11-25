#!/bin/bash
#SBATCH --job-name=rohan_200kb
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --mem=48G
#SBATCH --time=2-23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/rohan_200kb_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/rohan_200kb_%A_%a.err
#SBATCH --array=1-6

# ROHan with the settings talked about today (Nov 24, 2026):
#   - 200 kb windows (--size 200000) 
#   - --rohmu in the 1e-4 range (the 1e-5 default is tuned for humans and called 0% ROH in dholes);
#    will compare these three values: 8e-5, 2e-4, 8e-4
#   - autosomes only (--auto); --tstv 2.1 (default); no damage profile
#   - 24 CPUs, use w -t ${SLURM_CPUS_PER_TASK}
# Array = 2 samples x 3 rohmu values = 6 tasks:
#   1 India 8e-5   2 India 2e-4   3 India 8e-4
#   4 SD    8e-5   5 SD    2e-4   6 SD    8e-4
# Each combo writes to its own folder: 02_rohan/size200k_rohmu_<value>/

set -e

ROHAN=/home/ak308/Software/ROHan/bin/rohan
BAMDIR=/scratch/ak308/Dholes/00_alignment/dedup_bams
REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna
AUTOSOMES=/scratch/ak308/Dholes/02_rohan/autosomes.txt
WINDOW=200000

SAMPLES=(Dhole_SO15487_India_wild Dhole_USNM587829_SDZoo)
ROHMUS=(8e-5 2e-4 8e-4)

i=$((SLURM_ARRAY_TASK_ID - 1))
SAMPLE=${SAMPLES[$((i / ${#ROHMUS[@]}))]}
ROHMU=${ROHMUS[$((i % ${#ROHMUS[@]}))]}

OUTDIR=/scratch/ak308/Dholes/02_rohan/size200k_rohmu_${ROHMU}
mkdir -p $OUTDIR
cd $OUTDIR

echo "Sample: $SAMPLE  rohmu: $ROHMU  window: $WINDOW  threads: $SLURM_CPUS_PER_TASK  ($(date))"

$ROHAN \
  -t ${SLURM_CPUS_PER_TASK} \
  --rohmu ${ROHMU} \
  --size ${WINDOW} \
  --name ${SAMPLE} \
  --auto ${AUTOSOMES} \
  -o ${OUTDIR}/${SAMPLE} \
  ${REF} \
  ${BAMDIR}/${SAMPLE}.dedup.bam

echo "Done ${SAMPLE} rohmu ${ROHMU} ($(date))"
cat ${OUTDIR}/${SAMPLE}.summary.txt
