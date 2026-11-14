FreeBayes -- with VCF (more standard)
ANGSD -- with BAMs, genotype-likelihood

vs. GATK -- genome analysis toolkit -- 
- genotype calls: produces VCFs (taking info + parameters)
- GL = genotype likelihoods.= statistical value saying likeliness of a particular call
- nice because can model error --

ANGSD prob outputs likelihoods and is us 
RoHan (some amount of heterozygosity that isn't real) -- w the genotype likelihoods, you can account for that uncertainty
 i.e. bunch of heterozygosity 
 (also uses BAMS) -- can account for DNA damage
 calculates in windows 

ANGSD probably better for more options
- 

filtering on quality, etc. 
- freebase avoided bc on genotype likelihood

filtering happens @ the stage of VCF files? 
some filtering -- i.e. 

using SAM tools to remove duplicates @ level of the BAM files

filtering for: quality, depth, (at BAMs, or more commonly @ VCF)
- also for minor allele frequency
- perhaps.... depends on how heavily you will filter (high-quality SNPs for relatedness vs SNP density)
- 


* question: what about FastQC??

  - /// why is it used in certain times vs others?
 
  common: to filter minimum mapping quality <20 (99% predicted accuracy)
  - exclude reads not properly paired
  - or mapped ambiguously
  - some people, for depth filtering, will do 2-2.5x above avg/-50% within a file (look up what other people did.)
  - and exclude sites w a lot of missing data (#individuals/N)
  - will run a program in ANGSD where they fix alignment around InDels
  - 
