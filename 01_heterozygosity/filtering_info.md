angsd -i SAMPLE.dedup.bam      # input: the deduplicated BAM (Picard removed PCR/optical duplicates)
  -ref $REF -anc $REF          # dog reference (UU_Cfam_GSD_1.0), also used as the "ancestral" state
  -out SAMPLE -P 8             # output prefix; 8 threads
  -rf autosomes.txt            # only the 38 autosomes (no X, no mito, no unplaced scaffolds)
  -GL 1                        # genotype likelihood model 1 = SAMtools model
  -doSaf 1                     # compute per-site allele-frequency likelihoods (input to realSFS)
  -minMapQ 20                  # drop reads with mapping quality < 20 (= >1% chance the read is misplaced)
  -minQ 20                     # drop bases with quality < 20 (= >1% chance the base call is wrong)
  -only_proper_pairs 1         # use only read pairs that mapped in the expected orientation and distance
  -uniqueOnly 1                # use only reads that map to a single place
  -remove_bads 1               # drop reads flagged as duplicate, secondary, or failing QC
  -baq 1                       # recalculate base qualities near indels (reduces false SNPs there)
  -C 50                        # lower the mapping quality of reads with many mismatches (value recommended for BWA)
  -doCounts 1                  # count depth per site (needed for the two depth filters)
  -setMinDepth $((MEAN / 2))   # drop sites with depth < half the sample's mean depth (too little data)
  -setMaxDepth $((MEAN * 2))   # drop sites with depth > twice the mean (likely collapsed repeats)

  realSFS SAMPLE.saf.idx -P 8 -nSites 100000000 > SAMPLE.blocks.ml
                               # estimate the site frequency spectrum in blocks of 100 million sites
                               # (whole-genome at once ran out of memory); one line per block
awk '{a+=$1; b+=$2; c+=$3} ...' > SAMPLE.ml        # add the blocks into one genome-wide SFS
awk '{print $2 / ($1 + $2 + $3)}' > SAMPLE.het.txt # heterozygosity = heterozygous sites / all sites

realSFS saf2theta SAMPLE.saf.idx -sfs SAMPLE.ml -outname SAMPLE
        # per-site diversity, using the same filtered sites as above and the genome-wide SFS as a prior
thetaStat do_stat SAMPLE.thetas.idx -win 100000 -step 100000 -outnames SAMPLE.win
        # sum into 100 kb windows; step = window size, so windows don't overlap
awk 'NR > 1 && $14 > 0 {print $2, $3, $5 / $14}' SAMPLE.win.pestPG > SAMPLE.win_het.txt
        # per window: chromosome, window center, tP / nSites
        # tP (column 5) = pairwise diversity, which for one individual is its heterozygosity count
        # nSites (column 14) = how many sites passed the filters in that window; empty windows dropped

rohan
  -t 8                         # 8 threads
  --name SAMPLE                # label written into the output
  --auto autosomes.txt         # only the 38 autosomes (same list as ANGSD)
  --rohmu 2e-5                 # (2e-5 run only) heterozygosity rate ROHan expects INSIDE an ROH;
                               #   default 1e-5; a 1 Mb window near this rate is called ROH
  --cov 4,16                   # (filtered run only) ignore ROHan's coverage model and keep sites
                               #   with 4-16 reads (India) or 4-18 (SD Zoo), the same window as ANGSD
  -o OUTPUT_PREFIX  REF  BAM

  samtools view -q 20 -f 2 -F 3844
   # -q 20     mapping quality >= 20 (same as ANGSD -minMapQ 20)
   # -f 2      keep only properly paired reads (same as ANGSD -only_proper_pairs 1)
   # -F 3844   drop unmapped (4), secondary (256), QC-fail (512), duplicate (1024),
   #           and supplementary (2048) reads; 4 + 256 + 512 + 1024 + 2048 = 3844
