#!/bin/bash
#SBATCH --job-name=rohan
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=32G
#SBATCH --time=2-23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/rohan_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/rohan_%A_%a.err
#SBATCH --array=1-2

ROHAN=/home/ak308/Software/ROHan/bin/rohan
BAMDIR=/scratch/ak308/Dholes/00_alignment/dedup_bams
REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna
AUTOSOMES=/scratch/ak308/Dholes/02_rohan/autosomes.txt
OUTDIR=/scratch/ak308/Dholes/02_rohan

SAMPLES=(Dhole_SO15487_India_wild Dhole_USNM587829_SDZoo)
SAMPLE=${SAMPLES[$SLURM_ARRAY_TASK_ID-1]}

cd $OUTDIR
echo "Sample: $SAMPLE ($(date))"

$ROHAN \
  -t 8 \
  --name ${SAMPLE} \
  --auto ${AUTOSOMES} \
  -o ${OUTDIR}/${SAMPLE} \
  ${REF} \
  ${BAMDIR}/${SAMPLE}.dedup.bam

echo "Done ${SAMPLE} ($(date))"
cat ${OUTDIR}/${SAMPLE}.summary.txt

## make window size 100k
## rohmu -- 2e^-4 -- which is measure of variation expected in run of homozygosity.... so, need to expect less homozygosity in ROH to get it to return 
## 8e^-4, 8e^-5
## run rohan a bunch of times w rohmu at different values




#!/bin/bash
#SBATCH --job-name=rohan_2e-4
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=32G
#SBATCH --time=2-23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/rohan_2e4_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/rohan_2e4_%A_%a.err
#SBATCH --array=1-2

set -e

ROHAN=/home/ak308/Software/ROHan/bin/rohan
BAMDIR=/scratch/ak308/Dholes/00_alignment/dedup_bams
REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna
AUTOSOMES=/scratch/ak308/Dholes/02_rohan/autosomes.txt
OUTDIR=/scratch/ak308/Dholes/02_rohan/rohmu_2e-4
mkdir -p $OUTDIR

SAMPLES=(Dhole_SO15487_India_wild Dhole_USNM587829_SDZoo)
SAMPLE=${SAMPLES[$SLURM_ARRAY_TASK_ID-1]}

cd $OUTDIR
echo "Sample: $SAMPLE  rohmu: 2e-4  ($(date))"

$ROHAN \
  -t 8 \
  --rohmu 2e-4 \
  --size 200000
  --name ${SAMPLE} \
  --auto ${AUTOSOMES} \
  -o ${OUTDIR}/${SAMPLE} \
  ${REF} \
  ${BAMDIR}/${SAMPLE}.dedup.bam

echo "Done ${SAMPLE} ($(date))"
cat ${OUTDIR}/${SAMPLE}.summary.txt


#!/bin/bash
#SBATCH --job-name=rohan_8e-4
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=32G
#SBATCH --time=2-23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/rohan_2e5_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/rohan_2e5_%A_%a.err
#SBATCH --array=1-2

set -e

ROHAN=/home/ak308/Software/ROHan/bin/rohan
BAMDIR=/scratch/ak308/Dholes/00_alignment/dedup_bams
REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna
AUTOSOMES=/scratch/ak308/Dholes/02_rohan/autosomes.txt
OUTDIR=/scratch/ak308/Dholes/02_rohan/rohmu_8e-4
mkdir -p $OUTDIR

SAMPLES=(Dhole_SO15487_India_wild Dhole_USNM587829_SDZoo)
SAMPLE=${SAMPLES[$SLURM_ARRAY_TASK_ID-1]}

cd $OUTDIR
echo "Sample: $SAMPLE  rohmu: 8e-4  ($(date))"

$ROHAN \
  -t 8 \
  --rohmu 8e-4 \
  --size 200000
  --name ${SAMPLE} \
  --auto ${AUTOSOMES} \
  -o ${OUTDIR}/${SAMPLE} \
  ${REF} \
  ${BAMDIR}/${SAMPLE}.dedup.bam

echo "Done ${SAMPLE} ($(date))"
cat ${OUTDIR}/${SAMPLE}.summary.txt

*********   -t ${SLURM_CPUS_PER_TASK} \ -- make it 16 to 24 to make the jobs go faster!!!
*********  -t 


#!/bin/bash
#SBATCH --job-name=rohan_8e-5
#SBATCH --account=commons
#SBATCH --partition=long
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --mem=32G
#SBATCH --time=2-23:00:00
#SBATCH --output=/scratch/ak308/Dholes/output/rohan_8e5_%A_%a.out
#SBATCH --error=/scratch/ak308/Dholes/output/rohan_8e5_%A_%a.err
#SBATCH --array=1-2

set -e

ROHAN=/home/ak308/Software/ROHan/bin/rohan
BAMDIR=/scratch/ak308/Dholes/00_alignment/dedup_bams
REF=/scratch/ak308/Dholes/00_alignment/reference/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna
AUTOSOMES=/scratch/ak308/Dholes/02_rohan/autosomes.txt
OUTDIR=/scratch/ak308/Dholes/02_rohan/rohmu_8e-4
mkdir -p $OUTDIR

SAMPLES=(Dhole_SO15487_India_wild Dhole_USNM587829_SDZoo)
SAMPLE=${SAMPLES[$SLURM_ARRAY_TASK_ID-1]}

cd $OUTDIR
echo "Sample: $SAMPLE  rohmu: 8e-4  ($(date))"

$ROHAN \
  -t ${SLURM_CPUS_PER_TASK} \
  --rohmu 8e-4 \
  --size 200000
  --name ${SAMPLE} \
  --auto ${AUTOSOMES} \
  -o ${OUTDIR}/${SAMPLE} \
  ${REF} \
  ${BAMDIR}/${SAMPLE}.dedup.bam

echo "Done ${SAMPLE} ($(date))"
cat ${OUTDIR}/${SAMPLE}.summary.txt

7. Windows: is 100 kb right? What minimum sites per window, and what threshold and run length should define an ROH from windows? -- answer:: use 200kb window for ROH
4. Depth: samples range from 8× to 65×. Is skipping depth standardization acceptable for the preliminary analysis? If downsampling, to what depth? -- no worries, should work ok!!!!
6. ANGSD filters: are MAPQ 20, base quality 20, -C 50, -baq 1, proper pairs, and a 0.5×–2× depth window?

not a lot of variation toward adapting toward future bc lost a lot of their alternative alleles, 



see w the program: Mexican wolf: ROHs::: genome. ROH: Recent and long-term inbreeding..... s42003 -- Continent-wide view of genetic diversity 



*** DOWNLOAD THIS ONE: SAMN02921314 ---
** Dholes: show little ROH's 

MEXICAN WOLF and see it works, see lots of ROH w other wolves -- true 

Ethiopian Wolf: long-term small population size, so their diversity whittled away a bit versus newer where heterozygosity is more recent 

GENOMIC SIGNATURES OF EXTENSIVE INBREEDING IN ISLE ROYALE WOLVES


the Ethiopian wolf: think their ROH is whittleed away, but we don't necessarily see the same thing
vs. Mexican woolf used to have a diverse population, but then they went thorugh a bottleneck and now we see the long ROH's


maybe the dholes' population has been small for the last 13-50k years -- where they were once widespread, but perhaps the ones in Europe that went extinct were different htan those in Inda
and the India population

# heterozygosity: ethiopian wolf has very low. versus ROH's -- the Ethiopian wolf has a lot of SHORT ROH's (not too 


TRY TO MAKE A SIMILAR FIGURE FOR THE DHOLE: Fig 3 -- Isle Royale -- look at this paper for inspiration for figures!!!!!!!
