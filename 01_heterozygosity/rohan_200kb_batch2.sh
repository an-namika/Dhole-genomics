#!/bin/bash
#SBATCH --job-name=rohan_200kb_b2
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --mem=48G
#SBATCH --time=2-23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/rohan_200kb_b2_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/rohan_200kb_b2_%A_%a.err
#SBATCH --array=1-15%6

# Same ROHan settings as rohan_india_SD_200kb.sh (200 kb windows; --rohmu 8e-5, 2e-4, 8e-4;
# dedup BAMs, no MAPQ filtering; autosomes only; 24 threads), for:
#   - the Mexican wolf (SRR7107780, BioSample SAMN02921314)... which we KNOW to have many
#     long ROH; shows which --rohmu value detects them
#   - the remaining four dholes (Beijing Zoo, Berlin Zoo, C01A, Hebei)
# Array = 5 samples x 3 rohmu values = 15 tasks
# Output: 02_rohan/size200k_rohmu_<value>/  (same folders as the India / SD Zoo runs)

set -e

ROHAN=/home/ak308/Software/ROHan/bin/rohan
BAMDIR=/scratch/ak308/Dholes/00_alignment/dedup_bams
REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna
AUTOSOMES=/scratch/ak308/Dholes/02_rohan/autosomes.txt
WINDOW=200000

SAMPLES=(SRR7107780 Dhole_SAMN03168405_China_merged SRR8049189 Dhole_SAMN47341506_merged Dhole_SAMN62621803_merged)
ROHMUS=(8e-5 2e-4 8e-4)

i=$((SLURM_ARRAY_TASK_ID - 1))
SAMPLE=${SAMPLES[$((i / ${#ROHMUS[@]}))]}
ROHMU=${ROHMUS[$((i % ${#ROHMUS[@]}))]}

if [ ! -s ${BAMDIR}/${SAMPLE}.dedup.bam ]; then
    echo "ERROR: ${BAMDIR}/${SAMPLE}.dedup.bam missing (has its dedup job finished?)" >&2
    exit 1
fi

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
