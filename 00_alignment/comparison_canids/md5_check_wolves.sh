#!/bin/bash
#SBATCH --job-name=md5_check
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=2G
#SBATCH --time=04:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/md5_check_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/md5_check_%A_%a.err
#SBATCH --array=1-10

# Confirms each downloaded comparison FASTQ is complete and uncorrupted 
# One array task = one wolf (checks both _1 and _2 files).

FQDIR=/scratch/ak308/Dholes/00_alignment/newfastq     # folder the downloads were saved to
LIST=/scratch/ak308/Dholes/comparison_metadata/comparison_download_list_v1.tsv

SAMPLES=(SRR21985477 SRR21985471 SRR21985472 SRR21985474 \
         SRR7107776 SRR7107777 SRR7107778 SRR7107783 SRR7107786 SRR7107787)
ID=${SAMPLES[$SLURM_ARRAY_TASK_ID-1]}

echo "Sample: $ID"

STATUS=0
for READ in 1 2; do
    FILE=${ID}_${READ}.fastq.gz
    EXPECTED=$(awk -v f="$FILE" '$1 == f {print $3}' $LIST)
    ACTUAL=$(md5sum ${FQDIR}/${FILE} | cut -d' ' -f1)
    if [ "$EXPECTED" == "$ACTUAL" ]; then
        echo "PASS  $FILE"
    else
        echo "FAIL  $FILE  expected=$EXPECTED  actual=$ACTUAL"
        STATUS=1
    fi
done

exit $STATUS
