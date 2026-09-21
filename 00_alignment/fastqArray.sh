#!/bin/bash
# =============================================================================
# Purpose: batch download of published FASTQ files from ENA
#
# Run from:  .../scratch/.../publishedfastq/
# Needs:     fastq_list.tsv  
# Submit with:   sbatch download_fastq_array_v2.sh
# =============================================================================

#SBATCH --job-name=fastq_download
#SBATCH --account=commons              
#SBATCH --partition=commons            
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=10:00:00                  
#SBATCH --mem-per-cpu=1000m 
#SBATCH --array=1-62%6                   # 62 active files, max 6 downloading at once (suggested to not overload system?)
#SBATCH --output=/home/ak308/Dholes/output/fastq_dl.out
#SBATCH --error=/home/ak308/Dholes/output/fastq_dl.err

LIST="fastq_list.tsv"
DEST="."                       

# ----------------------------------------------------------------------------
# Pick THIS task's line out of the list.
# SLURM_ARRAY_TASK_ID is 1 for the first task, 2 for the second, etc.
# ----------------------------------------------------------------------------
LINE=$(grep -v '^[[:space:]]*#' "$LIST" | grep -v '^[[:space:]]*$' \
       | sed -n "${SLURM_ARRAY_TASK_ID}p")

if [[ -z "$LINE" ]]; then
    echo "ERROR: no line ${SLURM_ARRAY_TASK_ID} in ${LIST}" >&2
    exit 1
fi

NAME=$(printf '%s' "$LINE" | cut -f1)
URL=$(printf '%s'  "$LINE" | cut -f2)

OUT="${DEST}/${NAME}.fastq.gz"
TMP="${OUT}.part"

echo "=== array task ${SLURM_ARRAY_TASK_ID} | $(date) ==="
echo "name : ${NAME}"
echo "url  : ${URL}"
echo "out  : ${OUT}"

# ----------------------------------------------------------------------------
# suggested code to not duplicate efforts if I re-submit the script... 
# ----------------------------------------------------------------------------
if [[ -s "$OUT" ]] && gzip -t "$OUT" 2>/dev/null; then
    echo "Already downloaded and intact — skipping."
    exit 0
fi

# ----------------------------------------------------------------------------
# suggested code to continue resumes a partial file instead of starting over.
# ----------------------------------------------------------------------------
wget --continue \
     --tries=20 \
     --waitretry=30 \
     --timeout=60 \
     --read-timeout=600 \
     --no-verbose \
     --output-document="$TMP" \
     "$URL"

# ----------------------------------------------------------------------------
# Truncated gzip will fail here, so we find that out now instead of further into trying to align...
# ----------------------------------------------------------------------------
if ! gzip -t "$TMP"; then
    echo "ERROR: ${NAME} failed gzip integrity check — leaving .part for retry" >&2
    exit 1
fi

mv "$TMP" "$OUT"

echo "OK: ${OUT}  ($(du -h "$OUT" | cut -f1))"
echo "=== done $(date) ==="
