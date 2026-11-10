#!/bin/bash
#SBATCH --job-name=dhole_md5
#SBATCH --account=commons
#SBATCH --partition=commons
#SBATCH --ntasks=1
#SBATCH --mem=4G
#SBATCH --time=12:00:00
#SBATCH --output=/home/ak308/Dholes/output/md5_%j.out
#SBATCH --error=/home/ak308/Dholes/output/md5_%j.err

# verify_md5_v1.slurm
# Checks every downloaded FASTQ against the MD5 checksum ENA lists for it.
# Needs expected_md5.txt in the publishedfastq folder (made on a login node first; see instructions).
# Result: md5_results.txt, one line per file, "OK" or "FAILED".

DIR=/scratch/ak308/Dholes/00_alignment/publishedfastq
cd ${DIR}

# --ignore-missing skips any file listed by ENA that you don't have
md5sum -c --ignore-missing expected_md5.txt > md5_results.txt 2>&1

echo "Files that FAILED (re-download these):"
grep FAILED md5_results.txt || echo "None. All downloads match ENA."
