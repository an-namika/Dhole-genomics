#!/bin/bash
#SBATCH --job-name=dhole_merge
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=40G
#SBATCH --time=23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/merge_bams_%j.out
#SBATCH --error=/scratch/ak308/Dholes/output/merge_bams_%j.err
 
module purge
module load GCC/13.2.0
module load SAMtools/1.19.2
 
# turn strict mode on AFTER modules load (module scripts can trip set -u)
set -euo pipefail
 
BAM_DIR=/scratch/ak308/Dholes/00_alignment/bams
LIST=${BAM_DIR}/bam_list_merge.txt
OUT=${BAM_DIR}/Dhole_SAMN03168405_China_merged.bam
 
cd ${BAM_DIR}   # so plain filenames in the list resolve to this folder
 
# check every BAM in the list exists before merging (prints which one is missing)
while read -r f; do
  f=${f%$'\r'}                # strip Windows line endings if present
  [ -z "$f" ] && continue
  if [ ! -s "$f" ]; then echo "MISSING or empty: $f" >&2; exit 1; fi
  echo "found: $f"
done < ${LIST}
 
samtools merge -f -@ 8 -b ${LIST} -o ${OUT}
samtools index ${OUT}
samtools flagstat ${OUT} > ${BAM_DIR}/Dhole_SAMN03168405_China_merged.flagstat.txt
 
echo "Finished merging BAMs"
