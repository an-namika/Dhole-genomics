#!/bin/bash
# check_fastq_pairs_v1.sh
# Finds broken/truncated paired FASTQs before you waste time mapping them.
# For each *_1.fastq.gz / *_2.fastq.gz pair it checks:
#   1. gzip integrity (gzip -t)  -> catches downloads cut off mid-file
#   2. line count divisible by 4 -> each read is 4 lines (header, sequence, +, quality)
#   3. R1 and R2 have the SAME number of reads
#   4. (optional) read count matches what ENA says it should be
#
# Usage:
#   bash check_fastq_pairs_v1.sh /path/to/fastq_dir            # basic checks
#   bash check_fastq_pairs_v1.sh /path/to/fastq_dir --ena      # also compare to ENA read_count
#                                                               # (needs internet: run on a login node)
#
# Big files take a while (it reads every line). For many samples, submit as a Slurm job.
# Output: prints a table and writes fastq_check_report.tsv in the current folder.
 
DIR="${1:-.}"
CHECK_ENA="${2:-}"
REPORT="fastq_check_report.tsv"
 
echo -e "run\tR1_gzip\tR2_gzip\tR1_reads\tR2_reads\tdiv_by_4\tpairs_match\tENA_reads\tverdict" > "$REPORT"
 
# Adjust the pattern if your files are named *_R1.fastq.gz instead of *_1.fastq.gz
for R1 in "$DIR"/*_1.fastq.gz; do
    [ -e "$R1" ] || { echo "No *_1.fastq.gz files found in $DIR"; exit 1; }
    R2="${R1%_1.fastq.gz}_2.fastq.gz"
    RUN=$(basename "$R1" _1.fastq.gz)
 
    if [ ! -e "$R2" ]; then
        echo -e "$RUN\t-\t-\t-\t-\t-\t-\t-\tMISSING_R2" >> "$REPORT"
        continue
    fi
 
    echo "Checking $RUN ..."
 
    gzip -t "$R1" 2>/dev/null && G1=OK || G1=CORRUPT
    gzip -t "$R2" 2>/dev/null && G2=OK || G2=CORRUPT
 
    L1=$(zcat "$R1" 2>/dev/null | wc -l)
    L2=$(zcat "$R2" 2>/dev/null | wc -l)
 
    if (( L1 % 4 == 0 && L2 % 4 == 0 )); then DIV=yes; else DIV=NO; fi
    N1=$(( L1 / 4 )); N2=$(( L2 / 4 ))
    if (( N1 == N2 )); then MATCH=yes; else MATCH=NO; fi
 
    ENA_N="-"
    if [ "$CHECK_ENA" == "--ena" ]; then
        # ENA's read_count is the number of read PAIRS for paired-end runs
        ENA_N=$(curl -s "https://www.ebi.ac.uk/ena/portal/api/filereport?accession=${RUN}&result=read_run&fields=read_count&format=tsv" \
                | tail -n +2 | cut -f2)
        [ -z "$ENA_N" ] && ENA_N="lookup_failed"
    fi
 
    VERDICT=PASS
    [[ "$G1" != OK || "$G2" != OK || "$DIV" != yes || "$MATCH" != yes ]] && VERDICT=REDOWNLOAD
    if [[ "$ENA_N" =~ ^[0-9]+$ ]] && (( ENA_N != N1 )); then VERDICT=REDOWNLOAD; fi
 
    echo -e "$RUN\t$G1\t$G2\t$N1\t$N2\t$DIV\t$MATCH\t$ENA_N\t$VERDICT" >> "$REPORT"
done
 
column -t "$REPORT"
echo
echo "Runs to re-download:"
awk -F'\t' '$9!="PASS" && NR>1 {print "  " $1}' "$REPORT"
 
