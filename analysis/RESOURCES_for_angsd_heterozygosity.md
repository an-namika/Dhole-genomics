# resources i used for the "TEMPLATE" scripts to adapt as more BAM files get completed: 

https://www.popgen.dk/angsd/index.php/Heterozygosity
- doSaf 1 → realSFS → middle value ÷ sum

https://www.biostars.org/p/9601303
- explains why the .ml file can have several lines

Hack MD w/ Canada lynx:  https://hackmd.io/@tlama/heterozygosity
- example of the single-sample approach (which i will use, at least at first, for the India and SD Zoo dholes), including the a[2]/sum(a)

https://pespenilab.github.io/Ecological-Genomics/Fall2025/tutorials/EcoGen2025_PopGenomics4_Diversity.html
- guidance for the sliding window structure - structure: realSFS saf2theta → thetaStat do_stat with -win/-step set equal for non-overlapping windows

https://github.com/ANGSD/angsd/wiki/SFS
- background on doSaf and realSFS
