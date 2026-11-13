#!/bin/bash
#SBATCH --job-name=fastq_redownload
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=2-23:00:00
#SBATCH --mem=4G
#SBATCH --array=1-5%2
#SBATCH --output=/home/ak308/Dholes/output/fastq_redl3_%A_%a.out
#SBATCH --error=/home/ak308/Dholes/output/fastq_redl3_%A_%a.err

# Keeps RESUMING a partial download (never wipes progress) until the file reaches
# ENA's expected size, then checks the MD5. Alternates https/ftp and waits between
# attempts, because ENA has been dropping connections and sometimes blocking (403).

echo "My SLURM_ARRAY_TASK_ID: ${SLURM_ARRAY_TASK_ID}"

DIR=/scratch/ak308/Dholes/00_alignment/publishedfastq
LIST=${DIR}/redownload_list_v2.tsv

FILE=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f1)
HOSTPATH=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f2)
EXPECTED=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f3)
BYTES=$(sed "${SLURM_ARRAY_TASK_ID}q;d" ${LIST} | cut -f4)
HOSTPATH=${HOSTPATH#*://}      # strip ftp:// or https:// if present

echo "FILE: ${FILE}  expected size: ${BYTES}  md5: ${EXPECTED}"
cd ${DIR}

for attempt in $(seq 1 40); do
    if (( attempt % 2 )); then PROTO=https; else PROTO=ftp; fi
    SIZE=$(stat -c %s ${FILE} 2>/dev/null || echo 0)
    echo "Attempt ${attempt} via ${PROTO}: have ${SIZE} of ${BYTES} bytes - $(date)"

    # -c ALWAYS: picks up where the partial file left off
    wget -c --tries=3 --timeout=120 --read-timeout=300 -O ${FILE} ${PROTO}://${HOSTPATH}

    SIZE=$(stat -c %s ${FILE} 2>/dev/null || echo 0)
    if [ "${SIZE}" -eq "${BYTES}" ]; then
        if [ "$(md5sum ${FILE} | cut -d' ' -f1)" == "${EXPECTED}" ]; then
            echo "OK: ${FILE} matches ENA MD5 ($(date))"
            exit 0
        fi
        echo "Full size but MD5 wrong (corrupted); starting over"
        rm -f ${FILE}
    elif [ "${SIZE}" -gt "${BYTES}" ]; then
        echo "File is LARGER than expected; starting over"
        rm -f ${FILE}
    fi

    # back off: 2 min early on, 10 min later (helps with 403 / timeouts)
    if (( attempt < 10 )); then sleep 120; else sleep 600; fi
done

echo "FAILED: ${FILE} incomplete after 40 attempts ($(stat -c %s ${FILE} 2>/dev/null) of ${BYTES} bytes)" >&2
