Last login: Sun Sep  6 14:52:00 on ttys000
annamikakonkola@MacBook-Pro-5350 ~ % ssh -Y ak308@nots.rice.edu
ak308@nots.rice.edu's password: 

---------------------------------------------------------------------------
                      The Rice University Network
                      ===========================
                     Unauthorized use is prohibited.

                             NOTS.RICE.EDU

This computer system is for authorized users only.  Individuals using this
system without authority or in excess of their authority are subject to
having all their activities on this system monitored and recorded or
examined by any authorized person, including law enforcement, as system
personnel deem appropriate.  In the course of monitoring individuals
improperly using the system or in the course of system maintenance, the
activities of authorized users may also be monitored and recorded.  Any
material so recorded may be disclosed as appropriate.  Anyone using this
system consents to these terms.

        Documentation and User News -> https://kb.rice.edu/108191
        Questions and Problem Reports -> http://helpdesk.rice.edu
---------------------------------------------------------------------------

Last login: Wed Mar 25 17:19:12 2026 from 168.5.46.21
[ak308@loginx1 ~]$ cd scratch
-bash: cd: scratch: No such file or directory
[ak308@loginx1 ~]$ ls
02_02_KRT71_FST.sh  Bio310  Bio310_Dog  Desktop  KRT71_filtered_fst_results_noNAN.weir.fst  Software  x_FOXI3rmNan.sh
[ak308@loginx1 ~]$ mk dir scratch
-bash: mk: command not found
[ak308@loginx1 ~]$ cd /scratch/
[ak308@loginx1 scratch]$ cd
[ak308@loginx1 ~]$ cd /scratch/
[ak308@loginx1 scratch]$ cd ak308
[ak308@loginx1 ak308]$ mkdir dholes
[ak308@loginx1 ak308]$ cd dholes
[ak308@loginx1 dholes]$ mkdir scripts
[ak308@loginx1 dholes]$ ls
scripts
[ak308@loginx1 dholes]$ mkdir slurmout
[ak308@loginx1 dholes]$ mkdir 00_alignment
[ak308@loginx1 dholes]$ cd 00_alignment
[ak308@loginx1 00_alignment]$ mkdir publishedfastq
[ak308@loginx1 00_alignment]$ cd publishedfastq
[ak308@loginx1 publishedfastq]$ ls
[ak308@loginx1 publishedfastq]$ wgetftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR804/009/SRR8049189/SRR8049189_1.fastq.gz
-bash: wgetftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR804/009/SRR8049189/SRR8049189_1.fastq.gz: No such file or directory
[ak308@loginx1 publishedfastq]$ weget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR804/009/SRR8049189/SRR8049189_1.fastq.gz
-bash: weget: command not found
[ak308@loginx1 publishedfastq]$ wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR804/009/SRR8049189/SRR8049189_1.fastq.gz
--2026-09-11 11:26:04--  ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR804/009/SRR8049189/SRR8049189_1.fastq.gz
           => ‘SRR8049189_1.fastq.gz’
Resolving ftp.sra.ebi.ac.uk (ftp.sra.ebi.ac.uk)... 193.62.193.165
Connecting to ftp.sra.ebi.ac.uk (ftp.sra.ebi.ac.uk)|193.62.193.165|:21... connected.
Logging in as anonymous ... Logged in!
==> SYST ... done.    ==> PWD ... done.
==> TYPE I ... done.  ==> CWD (1) /vol1/fastq/SRR804/009/SRR8049189 ... done.
==> SIZE SRR8049189_1.fastq.gz ... 22942739248
==> PASV ... done.    ==> RETR SRR8049189_1.fastq.gz ... done.
Length: 22942739248 (21G) (unauthoritative)

SRR8049189_1.fastq.gz              0%[                                                        ]  60.82M  2.12MB/s    eta 3h 2m  ^C
[ak308@loginx1 publishedfastq]$ ls
SRR8049189_1.fastq.gz
[ak308@loginx1 publishedfastq]$ Read from remote host nots.rice.edu: Connection reset by peer
Connection to nots.rice.edu closed.
client_loop: send disconnect: Broken pipe
annamikakonkola@MacBook-Pro-5350 ~ % ssh -Y ak308@nots.rice.edu
ak308@nots.rice.edu's password: 

---------------------------------------------------------------------------
                      The Rice University Network
                      ===========================
                     Unauthorized use is prohibited.

                             NOTS.RICE.EDU

This computer system is for authorized users only.  Individuals using this
system without authority or in excess of their authority are subject to
having all their activities on this system monitored and recorded or
examined by any authorized person, including law enforcement, as system
personnel deem appropriate.  In the course of monitoring individuals
improperly using the system or in the course of system maintenance, the
activities of authorized users may also be monitored and recorded.  Any
material so recorded may be disclosed as appropriate.  Anyone using this
system consents to these terms.

        Documentation and User News -> https://kb.rice.edu/108191
        Questions and Problem Reports -> http://helpdesk.rice.edu
---------------------------------------------------------------------------

Last login: Fri Sep  4 11:21:56 2026 from 168.5.48.250
[ak308@loginx2 ~]$ ls
02_02_KRT71_FST.sh  Bio310  Bio310_Dog  Desktop  KRT71_filtered_fst_results_noNAN.weir.fst  Software  x_FOXI3rmNan.sh
[ak308@loginx2 ~]$ cd Bio310
[ak308@loginx2 Bio310]$ ls
Files  output  scripts
[ak308@loginx2 Bio310]$ cd Files
[ak308@loginx2 Files]$ ls
bedfiles
[ak308@loginx2 Files]$ cd..
-bash: cd..: command not found
[ak308@loginx2 Files]$ cd ..
[ak308@loginx2 Bio310]$ cd ..
[ak308@loginx2 ~]$ ls
02_02_KRT71_FST.sh  Bio310  Bio310_Dog  Desktop  KRT71_filtered_fst_results_noNAN.weir.fst  Software  x_FOXI3rmNan.sh
[ak308@loginx2 ~]$ cd Bio310_Dog
[ak308@loginx2 Bio310_Dog]$ ls
Files
[ak308@loginx2 Bio310_Dog]$ cd Files
[ak308@loginx2 Files]$ ls
touch
[ak308@loginx2 Files]$ cd touch
-bash: cd: touch: Not a directory
[ak308@loginx2 Files]$ cd
[ak308@loginx2 ~]$ cd Software
[ak308@loginx2 Software]$ ls
LICENSE  plink  plink_linux_x86_64_20250819.zip  prettify  toy.map  toy.ped
[ak308@loginx2 Software]$ cd ..
[ak308@loginx2 ~]$ cd /scratch/
[ak308@loginx2 scratch]$ cd ak308
[ak308@loginx2 ak308]$ ls
Bio310_Dog  dholes
[ak308@loginx2 ak308]$ cd Bio310_Dog
[ak308@loginx2 Bio310_Dog]$ ls
Files  Results
[ak308@loginx2 Bio310_Dog]$ cd Files
[ak308@loginx2 Files]$ ls
[ak308@loginx2 Files]$ cd ..
[ak308@loginx2 Bio310_Dog]$ cd Results
[ak308@loginx2 Results]$ ls
ADRB124860187_vcf_ancientcanids_bed.bed           FGF5_vcf_ancientcanids_bed.log
ADRB124860187_vcf_ancientcanids_bed.bim           FGF5_vcf_ancientcanids_bed.nosex
ADRB124860187_vcf_ancientcanids_bed.fam           FGF5_vcf_ancientcanids_finalcoded.log
ADRB124860187_vcf_ancientcanids_bed.log           FGF5_vcf_ancientcanids_finalcoded.nosex
ADRB124860187_vcf_ancientcanids_bed.nosex         FGF5_vcf_ancientcanids_finalcoded.vcf
ADRB124860187_vcf_ancientcanids_finalcoded.log    FGF5_vcf_ancientcanids_plink.log
ADRB124860187_vcf_ancientcanids_finalcoded.nosex  FGF5_vcf_ancientcanids_plink.map
ADRB124860187_vcf_ancientcanids_finalcoded.vcf    FGF5_vcf_ancientcanids_plink.nosex
ADRB124860187_vcf_ancientcanids_plink.log         FGF5_vcf_ancientcanids_plink.ped
ADRB124860187_vcf_ancientcanids_plink.map         FGF5_vcf_ancientcanids.recode.vcf
ADRB124860187_vcf_ancientcanids_plink.nosex       IGF1_vcf_ancientcanids.recode.vcf
ADRB124860187_vcf_ancientcanids_plink.ped         KRT71_vcf_ancientcanids.recode.vcf
ADRB124860187_vcf_ancientcanids.recode.vcf        MC1R_vcf_ancientcanids.recode.vcf
ADRB1_24860187_vcf_bed.bed                        modernADRB1_24860187_vcf_ancientcanids_bed.bed
ADRB1_24860187_vcf_bed.bim                        modernADRB1_24860187_vcf_ancientcanids_bed.bim
ADRB1_24860187_vcf_bed.fam                        modernADRB1_24860187_vcf_ancientcanids_bed.fam
ADRB1_24860187_vcf_bed.log                        modernADRB1_24860187_vcf_ancientcanids_bed.log
ADRB1_24860187_vcf_bed.nosex                      modernADRB1_24860187_vcf_ancientcanids_bed.nosex
ADRB1_24860187_vcf_finalcoded.log                 modernADRB1_24860187_vcf_ancientcanids_finalcoded.log
ADRB1_24860187_vcf_finalcoded.nosex               modernADRB1_24860187_vcf_ancientcanids_finalcoded.nosex
ADRB1_24860187_vcf_finalcoded.vcf                 modernADRB1_24860187_vcf_ancientcanids_finalcoded.vcf
ADRB1_24860187_vcf_plink.log                      modernADRB1_24860187_vcf_ancientcanids_plink.log
ADRB1_24860187_vcf_plink.map                      modernADRB1_24860187_vcf_ancientcanids_plink.map
ADRB1_24860187_vcf_plink.nosex                    modernADRB1_24860187_vcf_ancientcanids_plink.nosex
ADRB1_24860187_vcf_plink.ped                      modernADRB1_24860187_vcf_ancientcanids_plink.ped
ADRB1_24860187_vcf.recode.vcf                     modernADRB1_24860187_vcf_ancientcanids.recode.vcf
ADRB124870184_vcf_ancientcanids_bed.bed           modernADRB1_24870184_vcf_ancientcanids_bed.bed
ADRB124870184_vcf_ancientcanids_bed.bim           modernADRB1_24870184_vcf_ancientcanids_bed.bim
ADRB124870184_vcf_ancientcanids_bed.fam           modernADRB1_24870184_vcf_ancientcanids_bed.fam
ADRB124870184_vcf_ancientcanids_bed.log           modernADRB1_24870184_vcf_ancientcanids_bed.log
ADRB124870184_vcf_ancientcanids_bed.nosex         modernADRB1_24870184_vcf_ancientcanids_bed.nosex
ADRB124870184_vcf_ancientcanids_finalcoded.log    modernADRB1_24870184_vcf_ancientcanids_finalcoded.log
ADRB124870184_vcf_ancientcanids_finalcoded.nosex  modernADRB1_24870184_vcf_ancientcanids_finalcoded.nosex
ADRB124870184_vcf_ancientcanids_finalcoded.vcf    modernADRB1_24870184_vcf_ancientcanids_finalcoded.vcf
ADRB124870184_vcf_ancientcanids_plink.log         modernADRB1_24870184_vcf_ancientcanids_plink.log
ADRB124870184_vcf_ancientcanids_plink.map         modernADRB1_24870184_vcf_ancientcanids_plink.map
ADRB124870184_vcf_ancientcanids_plink.nosex       modernADRB1_24870184_vcf_ancientcanids_plink.nosex
ADRB124870184_vcf_ancientcanids_plink.ped         modernADRB1_24870184_vcf_ancientcanids_plink.ped
ADRB124870184_vcf_ancientcanids.recode.vcf        modernADRB1_24870184_vcf_ancientcanids.recode.vcf
ADRB1_24870184_vcf_bed.bed                        modernFGF5_vcf_ancientcanids_bed.bed
ADRB1_24870184_vcf_bed.bim                        modernFGF5_vcf_ancientcanids_bed.bim
ADRB1_24870184_vcf_bed.fam                        modernFGF5_vcf_ancientcanids_bed.fam
ADRB1_24870184_vcf_bed.log                        modernFGF5_vcf_ancientcanids_bed.log
ADRB1_24870184_vcf_bed.nosex                      modernFGF5_vcf_ancientcanids_bed.nosex
ADRB1_24870184_vcf_finalcoded.log                 modernFGF5_vcf_ancientcanids_finalcoded.log
ADRB1_24870184_vcf_finalcoded.nosex               modernFGF5_vcf_ancientcanids_finalcoded.nosex
ADRB1_24870184_vcf_finalcoded.vcf                 modernFGF5_vcf_ancientcanids_finalcoded.vcf
ADRB1_24870184_vcf_plink.log                      modernFGF5_vcf_ancientcanids_plink.log
ADRB1_24870184_vcf_plink.map                      modernFGF5_vcf_ancientcanids_plink.map
ADRB1_24870184_vcf_plink.nosex                    modernFGF5_vcf_ancientcanids_plink.nosex
ADRB1_24870184_vcf_plink.ped                      modernFGF5_vcf_ancientcanids_plink.ped
ADRB1_24870184_vcf.recode.vcf                     modernFGF5_vcf_ancientcanids.recode.vcf
CBD103_vcf_ancientcanids.recode.vcf               modern_vcf_ancientcanids.recode.vcf
FGF5_vcf_ancientcanids_bed.bed                    SGK3_vcf_ancientcanids.recode.vcf
FGF5_vcf_ancientcanids_bed.bim                    TYRP1_vcf_ancientcanids.recode.vcf
FGF5_vcf_ancientcanids_bed.fam
[ak308@loginx2 Results]$ cd
[ak308@loginx2 ~]$ ls
02_02_KRT71_FST.sh  Bio310  Bio310_Dog  Desktop  KRT71_filtered_fst_results_noNAN.weir.fst  Software  x_FOXI3rmNan.sh
[ak308@loginx2 ~]$ cd Bio310
[ak308@loginx2 Bio310]$ ls
Files  output  scripts
[ak308@loginx2 Bio310]$ cd scripts
[ak308@loginx2 scripts]$ ls
01_01_FGF5_subset_genes.sh        01_TYPR1_pullout_variant.sh      02_05_SGK3_slidingwindowFST.sh
01_01_FOXI3_subset_genes.sh       02_01_FGF5_filterVCF.sh          02_06_FGF5_rmNAN_slidingwindow.sh
01_01_KANK2_subset_genes.sh       02_01_FOXI3_filterVCF.sh         02_06_FOXI3_rmNAN_slidingwindow.sh
01_01_KRT25_subset_genes.sh       02_01_KANK2_filterVCF.sh         02_06_KANK2_rmNAN_slidingwindow.sh
01_01_SGK3_subset_genes.sh        02_01_KRT25_filterVCF.sh         02_06_KRT25_rmNAN_slidingwindow.sh
01_02_FGF5_adjustVCF.sh           02_01_KRT71_filterVCF.sh         02_06_KRT71_rmNAN_slidingwindow.sh
01_02_FOXI3_adjustVCF.sh          02_01_SGK3_filterVCF.sh          02_06_SGK3_rmNAN_slidingwindow.sh
01_02_KANK2_adjustVCF.sh          02_02_FGF5_runFST.sh             02_adjustVCF.sh
01_02_KRT71_adjustVCF.sh          02_02_FOXI3_runFST.sh            02_plot_TKTL1.sh
01_02_SGK3_adjustVCF.sh           02_02_KANK2_runFST.sh            a2_ADRB1_24860187_adjustVCF.sh
01_CBD103_pullout_variant.sh      02_02_KRT25_runFST.sh            a2_ADRB1_24870184_adjustVCF.sh
01_FGF5_pullout_variant.sh        02_02_KRT71_runFST2.sh           a2_FGF5_adjustVCF.sh
01_filterVCF.sh                   02_02_KRT71_runFST.sh            adjustADRB1_24860187.sh
01_IGF1_pullout_variant.sh        02_02_SGK3_runFST.sh             adjustADRB1_24870184.sh
01_KRT71_pullout_variant.sh       02_03_FGF5_removeNAN.sh          example.sh
01_MC1R_pullout_variant.sh        02_03_FOXI3_removeNAN.sh         KRT71_filtered_fst_results_noNAN.weir.fst
01_modernADRB1_24860187.sh        02_03_KANK2_removeNAN.sh         m2_ADRB1_24860187_adjustVCF.sh
01_modernADRB1_24870184.sh        02_03_KRT25_removeNAN.sh         m2_ADRB1_24870184_adjustVCF.sh
01_modernFGF5_pullout_variant.sh  02_03_KRT71_removeNAN.sh         m2_FGF5_adjustVCF.sh
01_modern_pullout_variant.sh      02_03_SGK3_removeNAN.sh          pullADRB1_24860187.sh
01_pulloutADRB1_24860187.sh       02_05_FGF5_slidingwindowFST.sh   pullADRB1_24870184.sh
01_pulloutADRB1_24870184.sh       02_05_FOXI3_slidingwindowFST.sh  x_FOXI3rmNan.sh
01_selectTKTL1.sh                 02_05_KANK2_slidingwindowFST.sh  xFOXI3_runFST.sh
01_SGK3_pullout_variant.sh        02_05_KRT25_slidingwindowFST.sh  x_SGK3rmNan.sh
01_subset_genes.sh                02_05_KRT71_slidingwindowFST.sh  xSGK3_runFST.sh
[ak308@loginx2 scripts]$ cd ..
[ak308@loginx2 Bio310]$ cd ouptu
-bash: cd: ouptu: No such file or directory
[ak308@loginx2 Bio310]$ cd output
[ak308@loginx2 output]$ ls
ADRB124870184_plink.err         ak308_fstscan_window_KANK2.out  modernADRB1_24870184_plink.err  removeNAN_SGK3_mutset.err
ADRB124870184_plink.out         ak308_fstscan_window_KRT25.err  modernADRB1_24870184_plink.out  removeNAN_SGK3_mutset.out
ak308_fstscan.err               ak308_fstscan_window_KRT25.out  out.err                         removeNAN_SGK3.out
ak308_fstscan_FGF5.err          ak308_fstscan_window_KRT71.err  out.out                         removeNAN_window_FGF5.err
ak308_fstscan_FGF5.out          ak308_fstscan_window_KRT71.out  plink1.err                      removeNAN_window_FGF5.out
ak308_fstscan_FOXI3.err         ak308_fstscan_window_SGK3.err   plink1.out                      removeNAN_window_FOXI3.err
ak308_fstscan_FOXI3_mutset.err  ak308_fstscan_window_SGK3.out   plink2.err                      removeNAN_window_FOXI3.out
ak308_fstscan_FOXI3_mutset.out  FGF5_plink.err                  plink2.out                      removeNAN_window_KANK2.err
ak308_fstscan_FOXI3.out         FGF5_plink.out                  plink.err                       removeNAN_window_KANK2.out
ak308_fstscan_KANK2.err         filter_FGF5.err                 plink.out                       removeNAN_window_KRT25.err
ak308_fstscan_KANK2.out         filter_FGF5.out                 removeNAN.err                   removeNAN_window_KRT25.out
ak308_fstscan_KRT25.err         filter_FOXI3.err                removeNAN_FGF5.err              removeNAN_window_KRT71.err
ak308_fstscan_KRT25.out         filter_FOXI3.out                removeNAN_FGF5.out              removeNAN_window_KRT71.out
ak308_fstscan.out               filter_KANK2.err                removeNAN_FOXI3.err             removeNAN_window_SGK3.err
ak308_fstscan_SGK3.err          filter_KANK2.out                removeNAN_FOXI3_mutset.err      removeNAN_window_SGK3.out
ak308_fstscan_SGK3_mutset.err   filter_KRT25.err                removeNAN_FOXI3_mutset.out      vcf1select.err
ak308_fstscan_SGK3_mutset.out   filter_KRT25.out                removeNAN_FOXI3.out             vcf1select.out
ak308_fstscan_SGK3.out          filter_KRT71.err                removeNAN_KANK2.err             vcf2select.err
ak308_fstscan_window_FGF5.err   filter_KRT71.out                removeNAN_KANK2.out             vcf2select.out
ak308_fstscan_window_FGF5.out   filter_SGK3.err                 removeNAN_KRT25.err             vcfout.err
ak308_fstscan_window_FOXI3.err  filter_SGK3.out                 removeNAN_KRT25.out             vcfout.out
ak308_fstscan_window_FOXI3.out  modernADRB1_24860187_plink.err  removeNAN.out                   vcfselect.err
ak308_fstscan_window_KANK2.err  modernADRB1_24860187_plink.out  removeNAN_SGK3.err              vcfselect.out
[ak308@loginx2 output]$ cd
[ak308@loginx2 ~]$ ls
02_02_KRT71_FST.sh  Bio310  Bio310_Dog  Desktop  KRT71_filtered_fst_results_noNAN.weir.fst  Software  x_FOXI3rmNan.sh
[ak308@loginx2 ~]$ cd Bio310_Dog
[ak308@loginx2 Bio310_Dog]$ ls
Files
[ak308@loginx2 Bio310_Dog]$ cd Files
[ak308@loginx2 Files]$ ls
touch
[ak308@loginx2 Files]$ cd
[ak308@loginx2 ~]$ ls
02_02_KRT71_FST.sh  Bio310  Bio310_Dog  Desktop  KRT71_filtered_fst_results_noNAN.weir.fst  Software  x_FOXI3rmNan.sh
[ak308@loginx2 ~]$ rmdir Bio310_Dog
rmdir: failed to remove 'Bio310_Dog': Directory not empty
[ak308@loginx2 ~]$ cd Bio310_Dog
[ak308@loginx2 Bio310_Dog]$ ls
Files
[ak308@loginx2 Bio310_Dog]$ touch Files
[ak308@loginx2 Bio310_Dog]$ cd Files
[ak308@loginx2 Files]$ ls
touch
[ak308@loginx2 Files]$ touch touch
[ak308@loginx2 Files]$ ls
touch
[ak308@loginx2 Files]$ ls
touch
[ak308@loginx2 Files]$ cd .. 
[ak308@loginx2 Bio310_Dog]$ cd ..
[ak308@loginx2 ~]$ ls
02_02_KRT71_FST.sh  Bio310  Bio310_Dog  Desktop  KRT71_filtered_fst_results_noNAN.weir.fst  Software  x_FOXI3rmNan.sh
[ak308@loginx2 ~]$ cd Bio310_Dog
[ak308@loginx2 Bio310_Dog]$ ls
Files
[ak308@loginx2 Bio310_Dog]$ cd Files
[ak308@loginx2 Files]$ ls
touch
[ak308@loginx2 Files]$ cd 
[ak308@loginx2 ~]$ ls -R Bio310_Dog
Bio310_Dog:
Files

Bio310_Dog/Files:
touch
[ak308@loginx2 ~]$ rm -ri Bio310_Dog
rm: descend into directory 'Bio310_Dog'? y
rm: descend into directory 'Bio310_Dog/Files'? y
rm: remove regular file 'Bio310_Dog/Files/touch'? y
rm: remove directory 'Bio310_Dog/Files'? y
rm: remove directory 'Bio310_Dog'? y
[ak308@loginx2 ~]$ ls
02_02_KRT71_FST.sh  Bio310  Desktop  KRT71_filtered_fst_results_noNAN.weir.fst  Software  x_FOXI3rmNan.sh
[ak308@loginx2 ~]$ mv Bio310 Bio310_Dog
[ak308@loginx2 ~]$ ls
02_02_KRT71_FST.sh  Bio310_Dog  Desktop  KRT71_filtered_fst_results_noNAN.weir.fst  Software  x_FOXI3rmNan.sh
[ak308@loginx2 ~]$ mv KRT71_filtered_fst_results_noNAN.weir.fst Bio310_Dog/scripts/
[ak308@loginx2 ~]$ ls
02_02_KRT71_FST.sh  Bio310_Dog  Desktop  Software  x_FOXI3rmNan.sh
[ak308@loginx2 ~]$ ls -R Bio310_Dog
Bio310_Dog:
Files  output  scripts

Bio310_Dog/Files:
bedfiles

Bio310_Dog/Files/bedfiles:
FGF5.bed  FOXI3.bed  KANK2.bed  KRT25.bed  KRT71.bed  SGK3.bed

Bio310_Dog/output:
ADRB124870184_plink.err         ak308_fstscan_window_KANK2.out  modernADRB1_24870184_plink.err  removeNAN_SGK3_mutset.err
ADRB124870184_plink.out         ak308_fstscan_window_KRT25.err  modernADRB1_24870184_plink.out  removeNAN_SGK3_mutset.out
ak308_fstscan.err               ak308_fstscan_window_KRT25.out  out.err                         removeNAN_SGK3.out
ak308_fstscan_FGF5.err          ak308_fstscan_window_KRT71.err  out.out                         removeNAN_window_FGF5.err
ak308_fstscan_FGF5.out          ak308_fstscan_window_KRT71.out  plink1.err                      removeNAN_window_FGF5.out
ak308_fstscan_FOXI3.err         ak308_fstscan_window_SGK3.err   plink1.out                      removeNAN_window_FOXI3.err
ak308_fstscan_FOXI3_mutset.err  ak308_fstscan_window_SGK3.out   plink2.err                      removeNAN_window_FOXI3.out
ak308_fstscan_FOXI3_mutset.out  FGF5_plink.err                  plink2.out                      removeNAN_window_KANK2.err
ak308_fstscan_FOXI3.out         FGF5_plink.out                  plink.err                       removeNAN_window_KANK2.out
ak308_fstscan_KANK2.err         filter_FGF5.err                 plink.out                       removeNAN_window_KRT25.err
ak308_fstscan_KANK2.out         filter_FGF5.out                 removeNAN.err                   removeNAN_window_KRT25.out
ak308_fstscan_KRT25.err         filter_FOXI3.err                removeNAN_FGF5.err              removeNAN_window_KRT71.err
ak308_fstscan_KRT25.out         filter_FOXI3.out                removeNAN_FGF5.out              removeNAN_window_KRT71.out
ak308_fstscan.out               filter_KANK2.err                removeNAN_FOXI3.err             removeNAN_window_SGK3.err
ak308_fstscan_SGK3.err          filter_KANK2.out                removeNAN_FOXI3_mutset.err      removeNAN_window_SGK3.out
ak308_fstscan_SGK3_mutset.err   filter_KRT25.err                removeNAN_FOXI3_mutset.out      vcf1select.err
ak308_fstscan_SGK3_mutset.out   filter_KRT25.out                removeNAN_FOXI3.out             vcf1select.out
ak308_fstscan_SGK3.out          filter_KRT71.err                removeNAN_KANK2.err             vcf2select.err
ak308_fstscan_window_FGF5.err   filter_KRT71.out                removeNAN_KANK2.out             vcf2select.out
ak308_fstscan_window_FGF5.out   filter_SGK3.err                 removeNAN_KRT25.err             vcfout.err
ak308_fstscan_window_FOXI3.err  filter_SGK3.out                 removeNAN_KRT25.out             vcfout.out
ak308_fstscan_window_FOXI3.out  modernADRB1_24860187_plink.err  removeNAN.out                   vcfselect.err
ak308_fstscan_window_KANK2.err  modernADRB1_24860187_plink.out  removeNAN_SGK3.err              vcfselect.out

Bio310_Dog/scripts:
01_01_FGF5_subset_genes.sh        01_TYPR1_pullout_variant.sh      02_05_SGK3_slidingwindowFST.sh
01_01_FOXI3_subset_genes.sh       02_01_FGF5_filterVCF.sh          02_06_FGF5_rmNAN_slidingwindow.sh
01_01_KANK2_subset_genes.sh       02_01_FOXI3_filterVCF.sh         02_06_FOXI3_rmNAN_slidingwindow.sh
01_01_KRT25_subset_genes.sh       02_01_KANK2_filterVCF.sh         02_06_KANK2_rmNAN_slidingwindow.sh
01_01_SGK3_subset_genes.sh        02_01_KRT25_filterVCF.sh         02_06_KRT25_rmNAN_slidingwindow.sh
01_02_FGF5_adjustVCF.sh           02_01_KRT71_filterVCF.sh         02_06_KRT71_rmNAN_slidingwindow.sh
01_02_FOXI3_adjustVCF.sh          02_01_SGK3_filterVCF.sh          02_06_SGK3_rmNAN_slidingwindow.sh
01_02_KANK2_adjustVCF.sh          02_02_FGF5_runFST.sh             02_adjustVCF.sh
01_02_KRT71_adjustVCF.sh          02_02_FOXI3_runFST.sh            02_plot_TKTL1.sh
01_02_SGK3_adjustVCF.sh           02_02_KANK2_runFST.sh            a2_ADRB1_24860187_adjustVCF.sh
01_CBD103_pullout_variant.sh      02_02_KRT25_runFST.sh            a2_ADRB1_24870184_adjustVCF.sh
01_FGF5_pullout_variant.sh        02_02_KRT71_runFST2.sh           a2_FGF5_adjustVCF.sh
01_filterVCF.sh                   02_02_KRT71_runFST.sh            adjustADRB1_24860187.sh
01_IGF1_pullout_variant.sh        02_02_SGK3_runFST.sh             adjustADRB1_24870184.sh
01_KRT71_pullout_variant.sh       02_03_FGF5_removeNAN.sh          example.sh
01_MC1R_pullout_variant.sh        02_03_FOXI3_removeNAN.sh         KRT71_filtered_fst_results_noNAN.weir.fst
01_modernADRB1_24860187.sh        02_03_KANK2_removeNAN.sh         m2_ADRB1_24860187_adjustVCF.sh
01_modernADRB1_24870184.sh        02_03_KRT25_removeNAN.sh         m2_ADRB1_24870184_adjustVCF.sh
01_modernFGF5_pullout_variant.sh  02_03_KRT71_removeNAN.sh         m2_FGF5_adjustVCF.sh
01_modern_pullout_variant.sh      02_03_SGK3_removeNAN.sh          pullADRB1_24860187.sh
01_pulloutADRB1_24860187.sh       02_05_FGF5_slidingwindowFST.sh   pullADRB1_24870184.sh
01_pulloutADRB1_24870184.sh       02_05_FOXI3_slidingwindowFST.sh  x_FOXI3rmNan.sh
01_selectTKTL1.sh                 02_05_KANK2_slidingwindowFST.sh  xFOXI3_runFST.sh
01_SGK3_pullout_variant.sh        02_05_KRT25_slidingwindowFST.sh  x_SGK3rmNan.sh
01_subset_genes.sh                02_05_KRT71_slidingwindowFST.sh  xSGK3_runFST.sh
[ak308@loginx2 ~]$ mv x_FOXI3rmNan.sh Bio310_Dog/scripts
[ak308@loginx2 ~]$ ls
02_02_KRT71_FST.sh  Bio310_Dog  Desktop  Software
[ak308@loginx2 ~]$ mv 02_02_KRT71_FST.sh Bio310_Dog/scripts
[ak308@loginx2 ~]$ ls
Bio310_Dog  Desktop  Software
[ak308@loginx2 ~]$ mkdir Dholes
[ak308@loginx2 ~]$ ls
Bio310_Dog  Desktop  Dholes  Software
[ak308@loginx2 ~]$ cd Dholes
[ak308@loginx2 Dholes]$ mkdir Files
[ak308@loginx2 Dholes]$ mkdir output
[ak308@loginx2 Dholes]$ mkdir scripts
[ak308@loginx2 Dholes]$ ls
Files  output  scripts
[ak308@loginx2 Dholes]$ cd
[ak308@loginx2 ~]$ ls
Bio310_Dog  Desktop  Dholes  Software
[ak308@loginx2 ~]$ cd Desktop
-bash: cd: Desktop: Not a directory
[ak308@loginx2 ~]$ cd Software
[ak308@loginx2 Software]$ ls
LICENSE  plink  plink_linux_x86_64_20250819.zip  prettify  toy.map  toy.ped
[ak308@loginx2 Software]$ cd prettify
-bash: cd: prettify: Not a directory
[ak308@loginx2 Software]$ cd
[ak308@loginx2 ~]$ cd Bio310_Dog
[ak308@loginx2 Bio310_Dog]$ ls
Files  output  scripts
[ak308@loginx2 Bio310_Dog]$ ls -R Bio310_Dog
ls: cannot access 'Bio310_Dog': No such file or directory
[ak308@loginx2 Bio310_Dog]$ cd
[ak308@loginx2 ~]$ ls -R Bio310_Dog
Bio310_Dog:
Files  output  scripts

Bio310_Dog/Files:
bedfiles

Bio310_Dog/Files/bedfiles:
FGF5.bed  FOXI3.bed  KANK2.bed  KRT25.bed  KRT71.bed  SGK3.bed

Bio310_Dog/output:
ADRB124870184_plink.err         ak308_fstscan_window_KANK2.out  modernADRB1_24870184_plink.err  removeNAN_SGK3_mutset.err
ADRB124870184_plink.out         ak308_fstscan_window_KRT25.err  modernADRB1_24870184_plink.out  removeNAN_SGK3_mutset.out
ak308_fstscan.err               ak308_fstscan_window_KRT25.out  out.err                         removeNAN_SGK3.out
ak308_fstscan_FGF5.err          ak308_fstscan_window_KRT71.err  out.out                         removeNAN_window_FGF5.err
ak308_fstscan_FGF5.out          ak308_fstscan_window_KRT71.out  plink1.err                      removeNAN_window_FGF5.out
ak308_fstscan_FOXI3.err         ak308_fstscan_window_SGK3.err   plink1.out                      removeNAN_window_FOXI3.err
ak308_fstscan_FOXI3_mutset.err  ak308_fstscan_window_SGK3.out   plink2.err                      removeNAN_window_FOXI3.out
ak308_fstscan_FOXI3_mutset.out  FGF5_plink.err                  plink2.out                      removeNAN_window_KANK2.err
ak308_fstscan_FOXI3.out         FGF5_plink.out                  plink.err                       removeNAN_window_KANK2.out
ak308_fstscan_KANK2.err         filter_FGF5.err                 plink.out                       removeNAN_window_KRT25.err
ak308_fstscan_KANK2.out         filter_FGF5.out                 removeNAN.err                   removeNAN_window_KRT25.out
ak308_fstscan_KRT25.err         filter_FOXI3.err                removeNAN_FGF5.err              removeNAN_window_KRT71.err
ak308_fstscan_KRT25.out         filter_FOXI3.out                removeNAN_FGF5.out              removeNAN_window_KRT71.out
ak308_fstscan.out               filter_KANK2.err                removeNAN_FOXI3.err             removeNAN_window_SGK3.err
ak308_fstscan_SGK3.err          filter_KANK2.out                removeNAN_FOXI3_mutset.err      removeNAN_window_SGK3.out
ak308_fstscan_SGK3_mutset.err   filter_KRT25.err                removeNAN_FOXI3_mutset.out      vcf1select.err
ak308_fstscan_SGK3_mutset.out   filter_KRT25.out                removeNAN_FOXI3.out             vcf1select.out
ak308_fstscan_SGK3.out          filter_KRT71.err                removeNAN_KANK2.err             vcf2select.err
ak308_fstscan_window_FGF5.err   filter_KRT71.out                removeNAN_KANK2.out             vcf2select.out
ak308_fstscan_window_FGF5.out   filter_SGK3.err                 removeNAN_KRT25.err             vcfout.err
ak308_fstscan_window_FOXI3.err  filter_SGK3.out                 removeNAN_KRT25.out             vcfout.out
ak308_fstscan_window_FOXI3.out  modernADRB1_24860187_plink.err  removeNAN.out                   vcfselect.err
ak308_fstscan_window_KANK2.err  modernADRB1_24860187_plink.out  removeNAN_SGK3.err              vcfselect.out

Bio310_Dog/scripts:
01_01_FGF5_subset_genes.sh        02_01_FGF5_filterVCF.sh          02_06_FGF5_rmNAN_slidingwindow.sh
01_01_FOXI3_subset_genes.sh       02_01_FOXI3_filterVCF.sh         02_06_FOXI3_rmNAN_slidingwindow.sh
01_01_KANK2_subset_genes.sh       02_01_KANK2_filterVCF.sh         02_06_KANK2_rmNAN_slidingwindow.sh
01_01_KRT25_subset_genes.sh       02_01_KRT25_filterVCF.sh         02_06_KRT25_rmNAN_slidingwindow.sh
01_01_SGK3_subset_genes.sh        02_01_KRT71_filterVCF.sh         02_06_KRT71_rmNAN_slidingwindow.sh
01_02_FGF5_adjustVCF.sh           02_01_SGK3_filterVCF.sh          02_06_SGK3_rmNAN_slidingwindow.sh
01_02_FOXI3_adjustVCF.sh          02_02_FGF5_runFST.sh             02_adjustVCF.sh
01_02_KANK2_adjustVCF.sh          02_02_FOXI3_runFST.sh            02_plot_TKTL1.sh
01_02_KRT71_adjustVCF.sh          02_02_KANK2_runFST.sh            a2_ADRB1_24860187_adjustVCF.sh
01_02_SGK3_adjustVCF.sh           02_02_KRT25_runFST.sh            a2_ADRB1_24870184_adjustVCF.sh
01_CBD103_pullout_variant.sh      02_02_KRT71_FST.sh               a2_FGF5_adjustVCF.sh
01_FGF5_pullout_variant.sh        02_02_KRT71_runFST2.sh           adjustADRB1_24860187.sh
01_filterVCF.sh                   02_02_KRT71_runFST.sh            adjustADRB1_24870184.sh
01_IGF1_pullout_variant.sh        02_02_SGK3_runFST.sh             example.sh
01_KRT71_pullout_variant.sh       02_03_FGF5_removeNAN.sh          KRT71_filtered_fst_results_noNAN.weir.fst
01_MC1R_pullout_variant.sh        02_03_FOXI3_removeNAN.sh         m2_ADRB1_24860187_adjustVCF.sh
01_modernADRB1_24860187.sh        02_03_KANK2_removeNAN.sh         m2_ADRB1_24870184_adjustVCF.sh
01_modernADRB1_24870184.sh        02_03_KRT25_removeNAN.sh         m2_FGF5_adjustVCF.sh
01_modernFGF5_pullout_variant.sh  02_03_KRT71_removeNAN.sh         pullADRB1_24860187.sh
01_modern_pullout_variant.sh      02_03_SGK3_removeNAN.sh          pullADRB1_24870184.sh
01_pulloutADRB1_24860187.sh       02_05_FGF5_slidingwindowFST.sh   x_FOXI3rmNan.sh
01_pulloutADRB1_24870184.sh       02_05_FOXI3_slidingwindowFST.sh  xFOXI3_runFST.sh
01_selectTKTL1.sh                 02_05_KANK2_slidingwindowFST.sh  x_SGK3rmNan.sh
01_SGK3_pullout_variant.sh        02_05_KRT25_slidingwindowFST.sh  xSGK3_runFST.sh
01_subset_genes.sh                02_05_KRT71_slidingwindowFST.sh
01_TYPR1_pullout_variant.sh       02_05_SGK3_slidingwindowFST.sh
[ak308@loginx2 ~]$ cd /scratch/
[ak308@loginx2 scratch]$ cd ak308
[ak308@loginx2 ak308]$ ls -R ak308
ls: cannot access 'ak308': No such file or directory
[ak308@loginx2 ak308]$ ls
Bio310_Dog  dholes
[ak308@loginx2 ak308]$ ls -R Bio310_Dog
Bio310_Dog:
Files  Results

Bio310_Dog/Files:

Bio310_Dog/Results:
ADRB124860187_vcf_ancientcanids_bed.bed           FGF5_vcf_ancientcanids_bed.log
ADRB124860187_vcf_ancientcanids_bed.bim           FGF5_vcf_ancientcanids_bed.nosex
ADRB124860187_vcf_ancientcanids_bed.fam           FGF5_vcf_ancientcanids_finalcoded.log
ADRB124860187_vcf_ancientcanids_bed.log           FGF5_vcf_ancientcanids_finalcoded.nosex
ADRB124860187_vcf_ancientcanids_bed.nosex         FGF5_vcf_ancientcanids_finalcoded.vcf
ADRB124860187_vcf_ancientcanids_finalcoded.log    FGF5_vcf_ancientcanids_plink.log
ADRB124860187_vcf_ancientcanids_finalcoded.nosex  FGF5_vcf_ancientcanids_plink.map
ADRB124860187_vcf_ancientcanids_finalcoded.vcf    FGF5_vcf_ancientcanids_plink.nosex
ADRB124860187_vcf_ancientcanids_plink.log         FGF5_vcf_ancientcanids_plink.ped
ADRB124860187_vcf_ancientcanids_plink.map         FGF5_vcf_ancientcanids.recode.vcf
ADRB124860187_vcf_ancientcanids_plink.nosex       IGF1_vcf_ancientcanids.recode.vcf
ADRB124860187_vcf_ancientcanids_plink.ped         KRT71_vcf_ancientcanids.recode.vcf
ADRB124860187_vcf_ancientcanids.recode.vcf        MC1R_vcf_ancientcanids.recode.vcf
ADRB1_24860187_vcf_bed.bed                        modernADRB1_24860187_vcf_ancientcanids_bed.bed
ADRB1_24860187_vcf_bed.bim                        modernADRB1_24860187_vcf_ancientcanids_bed.bim
ADRB1_24860187_vcf_bed.fam                        modernADRB1_24860187_vcf_ancientcanids_bed.fam
ADRB1_24860187_vcf_bed.log                        modernADRB1_24860187_vcf_ancientcanids_bed.log
ADRB1_24860187_vcf_bed.nosex                      modernADRB1_24860187_vcf_ancientcanids_bed.nosex
ADRB1_24860187_vcf_finalcoded.log                 modernADRB1_24860187_vcf_ancientcanids_finalcoded.log
ADRB1_24860187_vcf_finalcoded.nosex               modernADRB1_24860187_vcf_ancientcanids_finalcoded.nosex
ADRB1_24860187_vcf_finalcoded.vcf                 modernADRB1_24860187_vcf_ancientcanids_finalcoded.vcf
ADRB1_24860187_vcf_plink.log                      modernADRB1_24860187_vcf_ancientcanids_plink.log
ADRB1_24860187_vcf_plink.map                      modernADRB1_24860187_vcf_ancientcanids_plink.map
ADRB1_24860187_vcf_plink.nosex                    modernADRB1_24860187_vcf_ancientcanids_plink.nosex
ADRB1_24860187_vcf_plink.ped                      modernADRB1_24860187_vcf_ancientcanids_plink.ped
ADRB1_24860187_vcf.recode.vcf                     modernADRB1_24860187_vcf_ancientcanids.recode.vcf
ADRB124870184_vcf_ancientcanids_bed.bed           modernADRB1_24870184_vcf_ancientcanids_bed.bed
ADRB124870184_vcf_ancientcanids_bed.bim           modernADRB1_24870184_vcf_ancientcanids_bed.bim
ADRB124870184_vcf_ancientcanids_bed.fam           modernADRB1_24870184_vcf_ancientcanids_bed.fam
ADRB124870184_vcf_ancientcanids_bed.log           modernADRB1_24870184_vcf_ancientcanids_bed.log
ADRB124870184_vcf_ancientcanids_bed.nosex         modernADRB1_24870184_vcf_ancientcanids_bed.nosex
ADRB124870184_vcf_ancientcanids_finalcoded.log    modernADRB1_24870184_vcf_ancientcanids_finalcoded.log
ADRB124870184_vcf_ancientcanids_finalcoded.nosex  modernADRB1_24870184_vcf_ancientcanids_finalcoded.nosex
ADRB124870184_vcf_ancientcanids_finalcoded.vcf    modernADRB1_24870184_vcf_ancientcanids_finalcoded.vcf
ADRB124870184_vcf_ancientcanids_plink.log         modernADRB1_24870184_vcf_ancientcanids_plink.log
ADRB124870184_vcf_ancientcanids_plink.map         modernADRB1_24870184_vcf_ancientcanids_plink.map
ADRB124870184_vcf_ancientcanids_plink.nosex       modernADRB1_24870184_vcf_ancientcanids_plink.nosex
ADRB124870184_vcf_ancientcanids_plink.ped         modernADRB1_24870184_vcf_ancientcanids_plink.ped
ADRB124870184_vcf_ancientcanids.recode.vcf        modernADRB1_24870184_vcf_ancientcanids.recode.vcf
ADRB1_24870184_vcf_bed.bed                        modernFGF5_vcf_ancientcanids_bed.bed
ADRB1_24870184_vcf_bed.bim                        modernFGF5_vcf_ancientcanids_bed.bim
ADRB1_24870184_vcf_bed.fam                        modernFGF5_vcf_ancientcanids_bed.fam
ADRB1_24870184_vcf_bed.log                        modernFGF5_vcf_ancientcanids_bed.log
ADRB1_24870184_vcf_bed.nosex                      modernFGF5_vcf_ancientcanids_bed.nosex
ADRB1_24870184_vcf_finalcoded.log                 modernFGF5_vcf_ancientcanids_finalcoded.log
ADRB1_24870184_vcf_finalcoded.nosex               modernFGF5_vcf_ancientcanids_finalcoded.nosex
ADRB1_24870184_vcf_finalcoded.vcf                 modernFGF5_vcf_ancientcanids_finalcoded.vcf
ADRB1_24870184_vcf_plink.log                      modernFGF5_vcf_ancientcanids_plink.log
ADRB1_24870184_vcf_plink.map                      modernFGF5_vcf_ancientcanids_plink.map
ADRB1_24870184_vcf_plink.nosex                    modernFGF5_vcf_ancientcanids_plink.nosex
ADRB1_24870184_vcf_plink.ped                      modernFGF5_vcf_ancientcanids_plink.ped
ADRB1_24870184_vcf.recode.vcf                     modernFGF5_vcf_ancientcanids.recode.vcf
CBD103_vcf_ancientcanids.recode.vcf               modern_vcf_ancientcanids.recode.vcf
FGF5_vcf_ancientcanids_bed.bed                    SGK3_vcf_ancientcanids.recode.vcf
FGF5_vcf_ancientcanids_bed.bim                    TYRP1_vcf_ancientcanids.recode.vcf
FGF5_vcf_ancientcanids_bed.fam
[ak308@loginx2 ak308]$ cd ..
[ak308@loginx2 scratch]$ ls ak308
Bio310_Dog  dholes
[ak308@loginx2 scratch]$ mv dholes Dholes
mv: cannot stat 'dholes': No such file or directory
[ak308@loginx2 scratch]$ cd
[ak308@loginx2 ~]$ mv Bio310_Dog/scripts/KRT71_filtered_fst_results_noNAN.weir.fst Bio310_Dog/output/
[ak308@loginx2 ~]$ cd Bio310_Dog
[ak308@loginx2 Bio310_Dog]$ ls -R Bio310_Dog
ls: cannot access 'Bio310_Dog': No such file or directory
[ak308@loginx2 Bio310_Dog]$ cd
[ak308@loginx2 ~]$ ls -R Bio310_Dog
Bio310_Dog:
Files  output  scripts

Bio310_Dog/Files:
bedfiles

Bio310_Dog/Files/bedfiles:
FGF5.bed  FOXI3.bed  KANK2.bed  KRT25.bed  KRT71.bed  SGK3.bed

Bio310_Dog/output:
ADRB124870184_plink.err         FGF5_plink.out                             removeNAN_FOXI3_mutset.out
ADRB124870184_plink.out         filter_FGF5.err                            removeNAN_FOXI3.out
ak308_fstscan.err               filter_FGF5.out                            removeNAN_KANK2.err
ak308_fstscan_FGF5.err          filter_FOXI3.err                           removeNAN_KANK2.out
ak308_fstscan_FGF5.out          filter_FOXI3.out                           removeNAN_KRT25.err
ak308_fstscan_FOXI3.err         filter_KANK2.err                           removeNAN_KRT25.out
ak308_fstscan_FOXI3_mutset.err  filter_KANK2.out                           removeNAN.out
ak308_fstscan_FOXI3_mutset.out  filter_KRT25.err                           removeNAN_SGK3.err
ak308_fstscan_FOXI3.out         filter_KRT25.out                           removeNAN_SGK3_mutset.err
ak308_fstscan_KANK2.err         filter_KRT71.err                           removeNAN_SGK3_mutset.out
ak308_fstscan_KANK2.out         filter_KRT71.out                           removeNAN_SGK3.out
ak308_fstscan_KRT25.err         filter_SGK3.err                            removeNAN_window_FGF5.err
ak308_fstscan_KRT25.out         filter_SGK3.out                            removeNAN_window_FGF5.out
ak308_fstscan.out               KRT71_filtered_fst_results_noNAN.weir.fst  removeNAN_window_FOXI3.err
ak308_fstscan_SGK3.err          modernADRB1_24860187_plink.err             removeNAN_window_FOXI3.out
ak308_fstscan_SGK3_mutset.err   modernADRB1_24860187_plink.out             removeNAN_window_KANK2.err
ak308_fstscan_SGK3_mutset.out   modernADRB1_24870184_plink.err             removeNAN_window_KANK2.out
ak308_fstscan_SGK3.out          modernADRB1_24870184_plink.out             removeNAN_window_KRT25.err
ak308_fstscan_window_FGF5.err   out.err                                    removeNAN_window_KRT25.out
ak308_fstscan_window_FGF5.out   out.out                                    removeNAN_window_KRT71.err
ak308_fstscan_window_FOXI3.err  plink1.err                                 removeNAN_window_KRT71.out
ak308_fstscan_window_FOXI3.out  plink1.out                                 removeNAN_window_SGK3.err
ak308_fstscan_window_KANK2.err  plink2.err                                 removeNAN_window_SGK3.out
ak308_fstscan_window_KANK2.out  plink2.out                                 vcf1select.err
ak308_fstscan_window_KRT25.err  plink.err                                  vcf1select.out
ak308_fstscan_window_KRT25.out  plink.out                                  vcf2select.err
ak308_fstscan_window_KRT71.err  removeNAN.err                              vcf2select.out
ak308_fstscan_window_KRT71.out  removeNAN_FGF5.err                         vcfout.err
ak308_fstscan_window_SGK3.err   removeNAN_FGF5.out                         vcfout.out
ak308_fstscan_window_SGK3.out   removeNAN_FOXI3.err                        vcfselect.err
FGF5_plink.err                  removeNAN_FOXI3_mutset.err                 vcfselect.out

Bio310_Dog/scripts:
01_01_FGF5_subset_genes.sh        01_TYPR1_pullout_variant.sh      02_05_KRT71_slidingwindowFST.sh
01_01_FOXI3_subset_genes.sh       02_01_FGF5_filterVCF.sh          02_05_SGK3_slidingwindowFST.sh
01_01_KANK2_subset_genes.sh       02_01_FOXI3_filterVCF.sh         02_06_FGF5_rmNAN_slidingwindow.sh
01_01_KRT25_subset_genes.sh       02_01_KANK2_filterVCF.sh         02_06_FOXI3_rmNAN_slidingwindow.sh
01_01_SGK3_subset_genes.sh        02_01_KRT25_filterVCF.sh         02_06_KANK2_rmNAN_slidingwindow.sh
01_02_FGF5_adjustVCF.sh           02_01_KRT71_filterVCF.sh         02_06_KRT25_rmNAN_slidingwindow.sh
01_02_FOXI3_adjustVCF.sh          02_01_SGK3_filterVCF.sh          02_06_KRT71_rmNAN_slidingwindow.sh
01_02_KANK2_adjustVCF.sh          02_02_FGF5_runFST.sh             02_06_SGK3_rmNAN_slidingwindow.sh
01_02_KRT71_adjustVCF.sh          02_02_FOXI3_runFST.sh            02_adjustVCF.sh
01_02_SGK3_adjustVCF.sh           02_02_KANK2_runFST.sh            02_plot_TKTL1.sh
01_CBD103_pullout_variant.sh      02_02_KRT25_runFST.sh            a2_ADRB1_24860187_adjustVCF.sh
01_FGF5_pullout_variant.sh        02_02_KRT71_FST.sh               a2_ADRB1_24870184_adjustVCF.sh
01_filterVCF.sh                   02_02_KRT71_runFST2.sh           a2_FGF5_adjustVCF.sh
01_IGF1_pullout_variant.sh        02_02_KRT71_runFST.sh            adjustADRB1_24860187.sh
01_KRT71_pullout_variant.sh       02_02_SGK3_runFST.sh             adjustADRB1_24870184.sh
01_MC1R_pullout_variant.sh        02_03_FGF5_removeNAN.sh          example.sh
01_modernADRB1_24860187.sh        02_03_FOXI3_removeNAN.sh         m2_ADRB1_24860187_adjustVCF.sh
01_modernADRB1_24870184.sh        02_03_KANK2_removeNAN.sh         m2_ADRB1_24870184_adjustVCF.sh
01_modernFGF5_pullout_variant.sh  02_03_KRT25_removeNAN.sh         m2_FGF5_adjustVCF.sh
01_modern_pullout_variant.sh      02_03_KRT71_removeNAN.sh         pullADRB1_24860187.sh
01_pulloutADRB1_24860187.sh       02_03_SGK3_removeNAN.sh          pullADRB1_24870184.sh
01_pulloutADRB1_24870184.sh       02_05_FGF5_slidingwindowFST.sh   x_FOXI3rmNan.sh
01_selectTKTL1.sh                 02_05_FOXI3_slidingwindowFST.sh  xFOXI3_runFST.sh
01_SGK3_pullout_variant.sh        02_05_KANK2_slidingwindowFST.sh  x_SGK3rmNan.sh
01_subset_genes.sh                02_05_KRT25_slidingwindowFST.sh  xSGK3_runFST.sh
[ak308@loginx2 ~]$ cd
[ak308@loginx2 ~]$ ls
Bio310_Dog  Desktop  Dholes  Software
[ak308@loginx2 ~]$ echo $SCRATCH

[ak308@loginx2 ~]$ ls
Bio310_Dog  Desktop  Dholes  Software
[ak308@loginx2 ~]$ ls -l Desktop
-rw-r--r-- 1 ak308 lh106 2614546 Feb 15  2026 Desktop
[ak308@loginx2 ~]$ file Desktop
Desktop: Variant Call Format (VCF) version 4.2, ASCII text, with very long lines
[ak308@loginx2 ~]$ head Desktop
##fileformat=VCFv4.2
##fileDate=20260215
##source=PLINKv1.9
##contig=<ID=27,length=2545666>
##INFO=<ID=PR,Number=0,Type=Flag,Description="Provisional reference allele, may not be based on real reference genome">
##FORMAT=<ID=GT,Number=1,Type=String,Description="Genotype">
#CHROM	POS	ID	REF	ALT	QUAL	FILTER	INFO	FORMAT	0_Affenpinscher01	0_Affenpinscher02	0_Affenpinscher03	0_AfghanHound01	0_AfghanHound03	0_AfghanHound04	0_AfricanGoldenWolf01	0_AfricanGoldenWolf02	0_AfricanGoldenWolf03	0_AfricanGoldenWolf04	0_AfricanGoldenWolf05	0_AfricanGoldenWolf06	0_AfricanWildDog01	0_AfricanWildDog02	0_AfricanWildDog03	0_AiredaleTerrier01	0_AiredaleTerrier02	0_AiredaleTerrier05	0_AiredaleTerrier06	0_Akbash01	0_Akita01	0_AlapahaBlueBloodBulldog01	0_AlapahaBlueBloodBulldog02	0_AlaskanHusky01	0_AlaskanHusky020_AlaskanMalamute01	0_AlaskanMalamute01_Reseq	0_AlaskanMalamute02	0_AlaskanMalamute03	0_AlaskanMalamute04	0_AlaskanWolf	0_AlgonquinWolf13467	0_AlgonquinWolf13470	0_AlpineDachsbrake02	0_AmericanEskimoDog01	0_AmericanEskimoDog02	0_AmericanEskimoDog03	0_AmericanEskimoDog04	0_AmericanEskimoDog05	0_AmericanEskimoDog06	0_AmericanEskimoDog07	0_AmericanEskimoDog08	0_AmericanEskimoDog09	0_AmericanFoxhound01	0_AmericanHairlessTerrier01	0_AmericanHairlessTerrier01_Reseq	0_AmericanHairlessTerrier02	0_AmericanHairlessTerrier04	0_AmericanStaffordshireTerrier01	0_AmericanStaffordshireTerrier02	0_AmericanStaffordshireTerrier03	0_AmericanStaffordshireTerrier04	0_AmericanStaffordshireTerrier05	0_AmericanStaffordshireTerrier06	0_AmericanWaterSpaniel01	0_AmericanWaterSpaniel02	0_AmericanWaterSpaniel03	0_AnatolianShepherdDog01	0_AustralianCattleDog01	0_AustralianCattleDog02	0_AustralianCattleDog03	0_AustralianCattleDog04	0_AustralianCattleDog06	0_AustralianCattleDog07	0_AustralianCattleDog08	0_AustralianShepherd01	0_AustralianShepherd02	0_AustralianShepherd03	0_AustralianShepherd04	0_AustralianShepherd05	0_AustralianShepherd06	0_AustralianShepherd07	0_AustralianTerrier01	0_AustralianTerrier02	0_AustralianTerrier03	0_Basenji01	0_Basenji02	0_Basenji03	0_Basenji04	0_Basenji05	0_Basenji06	0_BassetHound01	0_BassetHound02	0_BassetHound03	0_BassetHound04	0_BavarianHound01	0_Beagle01	0_Beagle02	0_Beagle03	0_Beagle04	0_Beagle05	0_BeardedCollie01	0_BeardedCollie02	0_BeardedCollie03	0_BeardedCollie04	0_BeardedCollie05	0_BeardedCollie06	0_BeardedCollie07	0_Beauceron01	0_Beauceron02	0_BedlingtonTerrier01	0_BedlingtonTerrier02	0_BedlingtonTerrier03	0_BedlingtonTerrier04	0_BedlingtonTerrier05	0_BelgianLaekenois01	0_BelgianMalinois01	0_BelgianMalinois02	0_BelgianMalinois03	0_BelgianMalinois04	0_BelgianMalinois05	0_BelgianMalinois06	0_BelgianMalinois07	0_BelgianMalinois08	0_BelgianMalinois09	0_BelgianMalinois10	0_BelgianMalinois11	0_BelgianMalinois12	0_BelgianMalinois13	0_BelgianMalinois14	0_BelgianMalinois15	0_BelgianMalinois16	0_BelgianMalinois17	0_BelgianMalinois18	0_BelgianMalinois19	0_BelgianMalinois20	0_BelgianMalinois21	0_BelgianMalinois22	0_BelgianMalinois23	0_BelgianMalinois24	0_BelgianMalinois25	0_BelgianMalinois26	0_BelgianMalinois27	0_BelgianMalinois28	0_BelgianSheepdog01	0_BelgianSheepdog02	0_BelgianSheepdog03	0_BelgianSheepdog04	0_BelgianSheepdog05	0_BelgianSheepdog06	0_BelgianSheepdog07	0_BelgianSheepdog08	0_BelgianSheepdog09	0_BelgianSheepdog10	0_BelgianSheepdog11	0_BelgianSheepdog12	0_BelgianSheepdog13	0_BelgianTervuren01	0_BelgianTervuren02	0_BelgianTervuren03	0_BelgianTervuren04	0_BelgianTervuren05	0_BelgianTervuren06	0_BelgianTervuren07	0_BelgianTervuren08	0_BelgianTervuren09	0_BelgianTervuren10	0_BelgianTervuren11	0_BelgianTervuren19	0_BelgianTervuren20	0_BergerBlancSuisse01	0_BergerPicard01	0_BergerPicard02	0_BergerPicard03	0_BergerPicard04	0_BergerPicard05	0_BergerPicard06	0_BergerPicard07	0_Bern_AlpineDachsbracke0_BerneseMountainDog01	0_BerneseMountainDog02	0_BerneseMountainDog03	0_BerneseMountainDog04	0_BerneseMountainDog05	0_BerneseMountainDog06	0_BerneseMountainDog07	0_BerneseMountainDog08	0_BerneseMountainDog09	0_BerneseMountainDog10	0_BerneseMountainDog11	0_BerneseMountainDog12	0_BerneseMountainDog13	0_BerneseMountainDog14	0_BerneseMountainDog15	0_BerneseMountainDog16	0_BerneseMountainDog17	0_BerneseMountainDog18	0_BerneseMountainDog19	0_BerneseMountainDog20	0_BerneseMountainDog21	0_BerneseMountainDog22	0_BerneseMountainDog23	0_BerneseMountainDog24	0_BerneseMountainDog25	0_BerneseMountainDog26	0_BichonFrise01	0_BichonFrise02	0_BichonFrise03	0_BichonFrise04	0_BiewerTerrier01	0_BiewerTerrier02	0_BiewerTerrier03	0_BiewerTerrier04	0_BiewerTerrier05	0_BiewerTerrier06	0_BiewerTerrier07	0_BlackBackedJackal01	0_BlackRussianTerrier01	0_Bloodhound01	0_Boerboel01	0_Boerboel02	0_BorderCollie01	0_BorderCollie02	0_BorderCollie03	0_BorderCollie06	0_BorderCollie07	0_BorderCollie08	0_BorderCollie09	0_BorderCollie10	0_BorderCollie110_BorderCollie12	0_BorderCollie13	0_BorderCollie14	0_BorderCollie15	0_BorderCollie16	0_BorderCollie170_BorderCollie18	0_BorderCollie19	0_BorderCollie20	0_BorderCollie21	0_BorderCollie22	0_BorderCollie230_BorderCollie24	0_BorderCollie25	0_BorderCollie26	0_BorderCollie27	0_BorderCollie28	0_BorderCollie290_BorderTerrier01	0_BorderTerrier02	0_BorderTerrier03	0_BorderTerrier04	0_Borzoi01	0_BostonTerrier00_BostonTerrier02	0_BostonTerrier03	0_BouvierDesFlandres01	0_BouvierDesFlandres02	0_BouvierDesFlandres03	0_BouvierDesFlandres04	0_BouvierDesFlandres05	0_BouvierdesFlandres06	0_BouvierdesFlandres07	0_Boxer01	0_Boxer02	0_Boxer00_BoykinSpaniel01	0_BoykinSpaniel02	0_BoykinSpaniel03	0_BoykinSpaniel04	0_BoykinSpaniel05	0_Briard01	0_Briard02	0_Briard03	0_BrittanySpaniel01	0_BrittanySpaniel02	0_BrittanySpaniel03	0_BrusselsGriffon01	0_BrusselsGriffon02	0_BrusselsGriffon03	0_BrusselsGriffon04	0_BrusselsGriffon05	0_BrusselsGriffon06	0_BullMastiff01	0_BullMastiff02	0_BullMastiff03	0_BullTerrier01	0_BullTerrier02	0_BullTerrier03	0_BullTerrier04	0_BullTerrier05	0_BullTerrier06	0_BullTerrier07	0_BullTerrier08	0_BullTerrier09	0_BullTerrier10	0_BullTerrier11	0_BullTerrier12	0_BullTerrier13	0_BullTerrier14	0_BullTerrier15	0_BullTerrier16	0_BullTerrier17	0_BullTerrier18	0_BullTerrier19	0_BullTerrier20	0_BullTerrier21	0_BullTerrier22	0_BullTerrier23	0_BullTerrier24	0_BullTerrier25	0_BullTerrier26	0_BullTerrier27	0_BullTerrier28	0_BullTerrier29	0_BullTerrier30	0_BullTerrier31	0_BullTerrier32	0_BullTerrier33	0_BullTerrier34	0_BullTerrier35	0_BullTerrier36	0_BullTerrier37	0_BullTerrier38	0_BullTerrier39	0_BullTerrier40	0_BullTerrier41	0_BullTerrier42	0_BullTerrier43	0_BullTerrier44	0_Bulldog01	0_CairnTerrier01	0_CairnTerrier02	0_CairnTerrier03	0_CairnTerrier04	0_CairnTerrier05	0_CairnTerrier060_CairnTerrier07	0_CairnTerrier08	0_CairnTerrier09	0_CairnTerrier10	0_CairnTerrier11	0_CairnTerrier120_CairnTerrier13	0_CairnTerrier14	0_CairnTerrier15	0_CairnTerrier16	0_CaneCorso01	0_CaneCorso02	0_CaneCorso03	0_CardiganWelshCorgi01	0_CardiganWelshCorgi02	0_CardiganWelshCorgi03	0_CarolinaDog01	0_CarolinaDog01_Reseq	0_CarolinaDog03	0_CarolinaDog04	0_CatahoulaLeopardDog01	0_CatahoulaLeopardDog01_Reseqx2	0_CatahoulaLeopardDog02	0_CatahoulaLeopardDog03	0_CatahoulaLeopardDog04	0_CatahoulaLeopardDog05	0_CatahoulaLeopardDog06	0_CatahoulaLeopardDog07	0_CatahoulaLeopardDog08	0_CatahoulaLeopardDog09	0_CatahoulaLeopardDog11	0_CaucasianOvcharka01	0_CaucasianOvcharka02	0_CavalierKingCharlesSpaniel01	0_CavalierKingCharlesSpaniel02	0_CavalierKingCharlesSpaniel03	0_CavalierKingCharlesSpaniel04	0_CeskyTerrier01	0_CeskyTerrier020_CeskyTerrier02_Reseq	0_CeskyTerrier03	0_CeskyTerrier04	0_ChesapeakeBayRetriever01	0_ChesapeakeBayRetriever02	0_ChesapeakeBayRetriever03	0_ChesapeakeBayRetriever04	0_Chihuahua01	0_Chihuahua03	0_Chihuahua05	0_Chihuahua06	0_ChineseCrested01	0_ChineseCrested05	0_ChineseCrested06	0_ChineseIndigenousDog01	0_ChineseIndigenousDog02	0_ChineseIndigenousDog03	0_ChineseIndigenousDog04	0_ChineseIndigenousDog05	0_ChineseIndigenousDog060_ChineseIndigenousDog07	0_ChineseIndigenousDog08	0_ChineseIndigenousDog09	0_ChineseIndigenousDog10	0_ChineseIndigenousDog11	0_ChineseIndigenousDog12	0_ChineseIndigenousDog13	0_ChineseIndigenousDog14	0_ChineseIndigenousDog15	0_ChineseSharpei01	0_ChineseSharpei02	0_ChineseSharpei03	0_ChineseSharpei04	0_ChineseSharpei05	0_Chinook01	0_Chinook02	0_Chinook03	0_Chinook04	0_Chinook05	0_Chinook06	0_Chinook07	0_Chinook08	0_Chinook09	0_Chinook10	0_ChongqingDog01	0_ChowChow01	0_ChowChow02	0_ChowChow03	0_ChowChow04	0_ChowChow05	0_ChowChow06	0_ChowChow07	0_CirnecodellEtna01	0_CirnecodellEtna02	0_CirnecodellEtna03	0_ClumberSpaniel01	0_ClumberSpaniel02	0_ClumberSpaniel03	0_ClumberSpaniel04	0_CockerSpanielAmerican01	0_CockerSpanielAmerican02	0_CockerSpanielAmerican03	0_CockerSpanielAmerican04	0_CockerSpanielAmerican05	0_CockerSpanielAmerican06	0_CockerSpanielAmerican07	0_CockerSpanielAmerican08	0_CockerSpanielAmerican09	0_CockerSpanielEnglish01	0_CockerSpanielEnglish02	0_CockerSpanielEnglish03	0_CockerSpanielEnglish04	0_CockerSpanielEnglish050_CockerSpanielEnglish06	0_CockerSpanielEnglish07	0_CockerSpanielEnglish08	0_CockerSpanielEnglish09	0_Collie01	0_Collie02	0_Collie03	0_Coonhound01	0_CotonDeTulear01	0_CotonDeTulear02	0_CotonDeTulear03	0_Coyote01	0_Coyote02	0_Coyote03	0_Coyote04	0_Coyote05	0_Coyote06	0_Coyote07	0_Coyote08	0_CretanTracer01	0_CretanTracer02	0_CretanTracer03	0_CretanTracer04	0_CretanTracer05	0_CurlyCoatedRetriever01	0_CurlyCoatedRetriever02	0_CurlyCoatedRetriever03	0_CurlyCoatedRetriever04	0_CurlyCoatedRetriever050_Dachshund01	0_Dachshund02	0_Dachshund03	0_Dachshund04	0_Dachshund05	0_Dachshund06	0_Dachshund07	0_Dachshund08	0_Dachshund09	0_Dachshund10	0_Dachshund11	0_Dachshund12	0_Dachshund13	0_Dachshund14	0_Dachshund15	0_Dachshund16	0_Dalmatian01	0_Dalmatian02	0_Dalmatian03	0_Dalmatian04	0_DandieDinmontTerrier01	0_DandieDinmontTerrier02	0_DandieDinmontTerrier03	0_Dhole02	0_Dingo01	0_Dingo02	0_Dingo03	0_Dingo04	0_Dingo05	0_Dingo00_Dingo07	0_Dingo08	0_Dingo09	0_Dingo10	0_Dingo11	0_Dingo12	0_Dingo13	0_Dingo14	0_Dingo15	0_Dingo16	0_Dingo17	0_Dingo18	0_Dingo19	0_Dingo20	0_Dingo21	0_Dingo22	0_Dingo23	0_Dingo24	0_Dingo25	0_Dingo26	0_Dingo27	0_Dingo28	0_Dingo29	0_Dingo30	0_Dingo31	0_Dingo32	0_Doberman01	0_Doberman02	0_Doberman03	0_Doberman04	0_Doberman05	0_Doberman06	0_Doberman07	0_Doberman08	0_DogoArgentino01	0_DogoArgentino02	0_DogueDeBordeaux01	0_DutchShepherd01	0_EastSiberianLaika01	0_Elo01	0_EnglishBulldog01	0_EnglishFoxhound02	0_EnglishFoxhound03	0_EnglishMastiff01	0_EnglishMastiff02	0_EnglishMastiff03	0_EnglishMastiff04	0_EnglishMastiff05	0_EnglishMastiff06	0_EnglishPointer01	0_EnglishPointer02	0_EnglishSetter01	0_EnglishSetter02	0_EnglishSetter03	0_EnglishSetter00_EnglishSetter05	0_EnglishSetter07	0_EnglishSetter08	0_EnglishSpringerSpaniel01	0_EnglishSpringerSpaniel03	0_EnglishSpringerSpaniel04	0_EnglishSpringerSpaniel05	0_EnglishSpringerSpaniel07	0_EnglishSpringerSpaniel08	0_EnglishSpringerSpaniel09	0_EnglishSpringerSpaniel10	0_EntlebucherSennenhund01	0_EntlebucherSennenhund00_EntlebucherSennenhund03	0_EntlebucherSennenhund04	0_EntlebucherSennenhund05	0_EntlebucherSennenhund06	0_EntlebucherSennenhund07	0_EntlebucherSennenhund08	0_EntlebucherSennenhund09	0_EntlebucherSennenhund10	0_EntlebucherSennenhund11	0_EthiopianWolf01	0_Eurasier01	0_Eurasier02	0_Eurasier03	0_FieldSpaniel01	0_FieldSpaniel02	0_FieldSpaniel03	0_FieldSpaniel04	0_FinnishLapphund01	0_FinnishSpitz01	0_FlatCoatedRetriever01	0_FlatCoatedRetriever02	0_FlatCoatedRetriever03	0_FlatCoatedRetriever04	0_FlatCoatedRetriever05	0_FlatCoatedRetriever06	0_FlatCoatedRetriever07	0_FlatCoatedRetriever08	0_FlatCoatedRetriever09	0_FlatCoatedRetriever10	0_FlatCoatedRetriever11	0_FlatCoatedRetriever12	0_FlatCoatedRetriever13	0_FonniDog01	0_FrenchBulldog01	0_FrenchBulldog02	0_FrenchBulldog03	0_FrenchBulldog04	0_FrenchBulldog05	0_TSQ5	0_TSQ4	0_TSQ3	0_KMT1	0_QTQ11	0_QNQ5	0_STT4	0_ITT3	0_ITT2	0_SMT6	0_SPD1	0_SPD2	0_ILS9	0_ILS8	0_STT2	0_UKS2	0_UKS1	0_UKS3	0_QTQ10	0_QTQ9	0_QTQ8	0_ILS7	0_ILS6	0_AST4	0_AST3	0_SMT4	0_SMT5	0_ISK3	0_ISK1	0_ISK2	0_SQQ3	0_SQQ2	0_SQQ1	0_NQS2	0_ILS5	0_ILS4	0_SMT3	0_NQS1	0_UMQ4	0_UMQ3	0_UMQ1	0_UMQ2	0_QNQ4	0_QNQ3	0_QTQ7	0_QTQ6	0_QTQ5	0_QTQ4	0_KGL2	0_QTQ3	0_QTQ2	0_KGL1	0_QTQ1	0_ILS3	0_ITT1	0_GermanHuntingTerrier010_GermanShepherd01	0_GermanShepherd02	0_GermanShepherd03	0_GermanShepherd04	0_GermanShepherd05	0_GermanShepherd06	0_GermanShepherd07	0_GermanShepherd08	0_GermanShepherd09	0_GermanShepherd10	0_GermanShepherd11	0_GermanShepherd12	0_GermanShepherd13	0_GermanShepherd14	0_GermanShepherd15	0_GermanShepherd16	0_GermanShepherd17	0_GermanShepherd18	0_GermanShepherd19	0_GermanShepherd20	0_GermanShepherd21	0_GermanShepherd22	0_GermanShepherd23	0_GermanShepherd24	0_GermanShepherd25	0_GermanShepherd26	0_GermanShepherd27	0_GermanShepherd28	0_GermanShepherd29	0_GermanShorthairedPointer01	0_GermanShorthairedPointer02	0_GermanWirehairedPointer01	0_GermanWirehairedPointer02	0_GermanWirehairedPointer03	0_GiantSchnauzer01	0_GiantSchnauzer02	0_GiantSchnauzer03	0_GiantSchnauzer04	0_GiantSchnauzer05	0_GlenofImaalTerrier01	0_GlenofImaalTerrier02	0_GlenofImaalTerrier03	0_GlenofImaalTerrier04	0_GlenofImaalTerrier05	0_GlenofImallTerrier06	0_GoldenJackal01	0_GoldenJackal02	0_GoldenJackal03	0_GoldenRetriever01	0_GoldenRetriever02	0_GoldenRetriever03	0_GoldenRetriever05	0_GoldenRetriever06	0_GoldenRetriever07	0_GoldenRetriever08	0_GoldenRetriever09	0_GoldenRetriever10	0_GoldenRetriever11	0_GoldenRetriever12	0_GoldenRetriever13	0_GoldenRetriever14	0_GoldenRetriever15	0_GoldenRetriever16	0_GoldenRetriever17	0_GoldenRetriever18	0_GoldenRetriever19	0_GoldenRetriever20	0_GoldenRetriever21	0_GoldenRetriever22	0_GoldenRetriever23	0_GoldenRetriever24	0_GoldenRetriever25	0_GoldenRetriever26	0_GoldenRetriever27	0_GoldenRetriever28	0_GoldenRetriever29	0_GordonSetter01	0_GordonSetter02	0_GrandeBassetGriffonVendeen01	0_GrandeBassetGriffonVendeen02	0_GrandeBassetGriffonVendeen03	0_GrayFox01	0_GreatDane01	0_GreatDane02	0_GreatDane03	0_GreatDane04	0_GreatDane05	0_GreatPlainsWolf01	0_GreatPyrenees01	0_GreaterSwissMountainDog01	0_GreaterSwissMountainDog01_Reseq	0_GreaterSwissMountainDog02	0_GreaterSwissMountainDog03	0_GreaterSwissMountainDog04	0_GreaterSwissMountainDog05	0_GreekTracer01	0_GreekTracer02	0_GreekTracer03	0_GreekTracer04	0_GreekTracer05	0_GreenlandDog01	0_Greyhound01	0_Greyhound02	0_Greyhound03	0_Greyhound04	0_Greyhound05	0_Greyhound06	0_Greyhound07	0_Greyhound08	0_Greyhound09	0_Greyhound10	0_Grossspitz01	0_Havanese01	0_Havanese02	0_Havanese03	0_Havanese04	0_Havanese05	0_Havanese06	0_Heideterrier01	0_HighlandWildDog01	0_HighlandWildDog02	0_HighlandWildDog03	0_Hovawart01	0_Hovawart02	0_Hovawart03	0_IbizanHound01	0_IbizanHound02	0_IbizanHound03	0_IbizanHound04	0_IbizanHound05	0_IbizanHound06	0_IbizanHound07	0_IcelandicSheepdog01	0_IcelandicSheepdog02	0_IndigenousDogNigeria01	0_IndigenousDogNigeria020_IndigenousDogNigeria03	0_IndigenousDogNigeria04	0_IndigenousDogVietnam01	0_IndigenousDogVietnam02	0_IndigenousDogVietnam03	0_IndigenousDogVietnam04	0_IndigenousDogVietnam05	0_IrishRedandWhiteSetter01	0_IrishSetter01	0_IrishTerrier01	0_IrishTerrier02	0_IrishTerrier03	0_IrishTerrier04	0_IrishWaterSpaniel01	0_IrishWaterSpaniel02	0_IrishWaterSpaniel03	0_IrishWaterSpaniel04	0_IrishWaterSpaniel05	0_IrishWaterSpaniel06	0_IrishWaterSpaniel07	0_IrishWolfhound01	0_IstrianShorthairedHound01	0_ItalianGreyhound01	0_ItalianGreyhound02	0_JackRussellTerrier02	0_JackRussellTerrier03	0_JackRussellTerrier04	0_JackRussellTerrier05	0_JackRussellTerrier06	0_JackRussellTerrier07	0_JackRussellTerrier08	0_JackRussellTerrier09	0_Jamthund01	0_JapaneseChin01	0_JapaneseChin03	0_JapaneseChin04	0_Jindo01	0_Keeshond01	0_Keeshond02	0_Keeshond03	0_KellyBlueTerrier03	0_KerryBlueTerrier02	0_KintamaniDog010_Komondor01	0_Kromfohrlander01	0_KunmingDog01	0_KunmingDog02	0_KunmingDog03	0_KunmingDog04	0_KunmingDog05	0_KunmingDog06	0_KunmingDog07	0_KunmingDog08	0_KunmingDog09	0_KunmingDog10	0_KunmingDog11	0_KunmingDog12	0_KunmingDog13	0_KunmingDog14	0_KunmingDog15	0_KunmingDog16	0_KunmingDog17	0_KunmingDog18	0_KunmingDog19	0_KunmingDog20	0_KunmingDog21	0_Kuvasz01	0_Kuvasz01_Reseq	0_Kuvasz02	0_Kuvasz03	0_Kuvasz04	0_LabradorRetriever01	0_LabradorRetriever02	0_LabradorRetriever03	0_LabradorRetriever04	0_LabradorRetriever05	0_LabradorRetriever06	0_LabradorRetriever07	0_LabradorRetriever08	0_LabradorRetriever10	0_LabradorRetriever12	0_LabradorRetriever13	0_LabradorRetriever14	0_LabradorRetriever15	0_LabradorRetriever16	0_LabradorRetriever17	0_LabradorRetriever18	0_LabradorRetriever19	0_LabradorRetriever20	0_LabradorRetriever21	0_LabradorRetriever22	0_LabradorRetriever23	0_LabradorRetriever24	0_LabradorRetriever25	0_LabradorRetriever26	0_LagottoRomagnolo01	0_LagottoRomagnolo02	0_LagottoRomagnolo03	0_LagottoRomagnolo04	0_LagottoRomagnolo05	0_LagottoRomagnolo06	0_LagottoRomagnolo07	0_LagottoRomagnolo08	0_LagottoRomagnolo09	0_LancashireHeeler01	0_LancashireHeeler02	0_LancashireHeeler03	0_Landseer01	0_LapponianHerder01	0_Leonberger01	0_Leonberger02	0_Leonberger03	0_Leonberger04	0_Leonberger05	0_Leonberger06	0_Leonberger07	0_Leonberger08	0_Leonberger09	0_Leonberger10	0_Leonberger11	0_Leonberger12	0_Leonberger13	0_Leonberger14	0_Leonberger15	0_Leonberger16	0_Leonberger17	0_Leonberger18	0_Leonberger19	0_Leonberger20	0_Leonberger21	0_Leonberger22	0_Leonberger23	0_LhasaApso01	0_LhasaApso02	0_LhasaApso03	0_LhasaApso04	0_Lowchen01	0_MIX_AmericanCocker_Beagle01	0_MIX_AmericanCocker_Beagle02	0_MIX_AmericanCocker_Beagle03	0_MIX_Dachshund01	0_MIX_GoldenRetriever01	0_MIX_KerryBlueTerrier_Beagle01	0_MIX_LabradorRetriever01	0_MIX_MiniatureSchnauzer_Beagle01	0_Maltese01	0_Maltese02	0_Maltese03	0_Maltese04	0_Maltese05	0_Maltese06	0_Maltese07	0_Maltese08	0_Maltese09	0_Maltese10	0_Maltese11	0_Maltese12	0_Maltese13	0_Maltese14	0_Maltese15	0_Maremma01	0_MastinoAbruzzese01	0_MauritianDog01	0_MexicanHairless01	0_MiniatureBullTerrier01	0_MiniatureBullTerrier02	0_MiniatureBullTerrier03	0_MiniatureBullTerrier04	0_MiniatureBullTerrier05	0_MiniaturePinscher01	0_MiniaturePoodle01	0_MiniaturePoodle02	0_MiniaturePoodle03	0_MiniatureSchnauzer01	0_MiniatureSchnauzer02	0_MiniatureSchnauzer03	0_MiniatureSchnauzer04	0_MiniatureSchnauzer05	0_MiniatureSchnauzer06	0_MiniatureSchnauzer07	0_MiniatureSchnauzer08	0_MiniatureSchnauzer09	0_MiniatureSchnauzer10	0_MiniatureSchnauzer11	0_MiniatureSchnauzer12	0_MiniatureSchnauzer13	0_MiniatureSchnauzer14	0_MiniatureSchnauzer15	0_MiniatureSchnauzer17	0_MiniatureSchnauzer18	0_MixedBreed06	0_MixedBreed07	0_MixedBreed08	0_MixedBreed09	0_MixedBreed10	0_MountainCur01	0_MountainCur02	0_MountainCur03	0_MountainCur04	0_Mudi010_Mudi01_Reseq	0_Mudi02	0_NeapolitanMastiff01	0_NeapolitanMastiff02	0_NewGuineaSingingDog01	0_NewGuineaSingingDog02	0_NewGuineaSingingDog03	0_NewGuineaSingingDog04	0_NewGuineaSingingDog07	0_NewGuineaSingingDog08	0_NewGuineaSingingDog09	0_NewGuineaSingingDog10	0_NewGuineaSingingDog11	0_NewGuineaSingingDog12	0_NewGuineaSingingDog13	0_NewGuineaSingingDog14	0_NewGuineaSingingDog15	0_NewGuineaSingingDog16	0_NewGuineaSingingDog17	0_Newfoundland01	0_Newfoundland02	0_Newfoundland03	0_Newfoundland04	0_Newfoundland05	0_NorfolkTerrier01	0_NorfolkTerrier02	0_NorwegianBuhund01	0_NorwegianBuhund02	0_NorwegianElkhound01	0_NorwegianElkhound02	0_NorwegianElkhound03	0_NorwegianElkhound04	0_NorwegianElkhound05	0_NorwegianElkhound06	0_NorwegianLundehund01	0_NorwegianLundehund02	0_NorwegianLundehund03	0_NorwegianLundehund04	0_NorwegianLundehund05	0_NorwegianLundehund06	0_NorwichTerrier01	0_NorwichTerrier02	0_NorwichTerrier03	0_NorwichTerrier04	0_NorwichTerrier05	0_NorwichTerrier06	0_NovaScotiaDuckTollingRetriever01	0_NovaScotiaDuckTollingRetriever02	0_OldEnglishSheepdog01	0_OldEnglishSheepdog02	0_OldEnglishSheepdog03	0_Otterhound01	0_Otterhound02	0_Otterhound03	0_Otterhound04	0_Papillon01	0_Papillon02	0_ParsonsRussellTerrier01	0_ParsonsRussellTerrier02	0_Pekingese01	0_Pekingese02	0_PembrokeWelshCorgi01	0_PembrokeWelshCorgi02	0_PembrokeWelshCorgi03	0_PembrokeWelshCorgi04	0_PembrokeWelshCorgi05	0_PeruvianHairless01	0_PeruvianVillageDog01	0_PeruvianVillageDog02	0_PeruvianVillageDog03	0_PeruvianVillageDog04	0_PeruvianVillageDog05	0_PeruvianVillageDog06	0_PeruvianVillageDog07	0_PeruvianVillageDog08	0_PetitBassetGriffonVendeen01	0_PetitBassetGriffonVendeen02	0_PetitBassetGriffonVendeen03	0_PetitBassetGriffonVendeen04	0_PetitBassetGriffonVendeen05	0_PharaohHound01	0_PharaohHound02	0_PharaohHound03	0_PhuquocRidgeback01	0_PhuquocRidgeback02	0_PhuquocRidgeback03	0_PitBullTerrier01	0_PitBullTerrier02	0_PitBullTerrier03	0_PitBullTerrier04	0_Pointer01	0_Pointer02	0_Pointer03	0_Pointer04	0_Pointer05	0_Pointer06	0_Pointer07	0_Pomeranian01	0_Pomeranian02	0_Pomeranian03	0_PortuguesePodengo01	0_PortuguesePodengoPequeno01	0_PortuguesePodengoPequeno02	0_PortugueseWaterDog01	0_PortugueseWaterDog02	0_PortugueseWaterDog03	0_PortugueseWaterDog04	0_PortugueseWaterDog05	0_PortugueseWaterDog06	0_PortugueseWaterDog07	0_PortugueseWaterDog08	0_PortugueseWaterDog09	0_PortugueseWaterDog09_Reseq	0_PortugueseWaterDog10	0_PortugueseWaterDog11	0_PortugueseWaterDog12	0_PortugueseWaterDog13	0_PortugueseWaterDog15	0_Pug01	0_Pug02	0_Pug03	0_Pug04	0_Pug05	0_Pug06	0_Pug07	0_Puli01	0_Pumi01	0_Pumi01_Reseq	0_Pumi02	0_Pumi03	0_QingchuanDog01	0_QuebecWolf	0_RedWolf03	0_RedWolf04	0_RhodesianRidgeback01	0_RhodesianRidgeback02	0_RhodesianRidgeback03	0_RhodesianRidgeback04	0_RhodesianRidgeback05	0_RhodesianRidgeback06	0_RhodesianRidgeback07	0_RhodesianRidgeback08	0_Rottweiler01	0_Rottweiler02	0_Rottweiler03	0_Rottweiler04	0_Rottweiler05	0_Rottweiler06	0_Rottweiler07	0_Rottweiler08	0_Rottweiler09	0_Rottweiler10	0_Rottweiler11	0_Rottweiler12	0_SaintBernard01	0_SaintBernard02	0_SaintBernard03	0_SaintBernard04	0_SaintBernard05	0_SaintBernard06	0_Saluki01	0_Saluki02	0_Saluki03	0_Samoyed01	0_Samoyed02	0_Samoyed03	0_Samoyed04	0_Samoyed05	0_Schipperke01	0_Schipperke02	0_ScottishDeerhound01	0_ScottishDeerhound02	0_ScottishDeerhound03	0_ScottishDeerhound04	0_ScottishDeerhound05	0_ScottishDeerhound06	0_ScottishDeerhound07	0_ScottishDeerhound08	0_ScottishDeerhound09	0_ScottishDeerhound10	0_ScottishDeerhound11	0_ScottishTerrier01	0_ScottishTerrier02	0_ScottishTerrier03	0_ScottishTerrier04	0_ScottishTerrier05	0_ScottishTerrier06	0_ScottishTerrier07	0_ScottishTerrier08	0_ScottishTerrier09	0_ScottishTerrier10	0_ScottishTerrier11	0_SealyhamTerrier01	0_SealyhamTerrier02	0_SealyhamTerrier03	0_SealyhamTerrier04	0_SealyhamTerrier05	0_SealyhamTerrier06	0_SealyhamTerrier07	0_SealyhamTerrier08	0_SealyhamTerrier09	0_SealyhamTerrier10	0_ShetlandSheepdog01	0_ShetlandSheepdog02	0_ShetlandSheepdog03	0_ShetlandSheepdog04	0_ShetlandSheepdog05	0_ShetlandSheepdog06	0_ShetlandSheepdog07	0_ShetlandSheepdog08	0_ShetlandSheepdog09	0_ShetlandSheepdog10	0_ShetlandSheepdog11	0_ShetlandSheepdog12	0_ShetlandSheepdog13	0_ShetlandSheepdog14	0_ShetlandSheepdog15	0_ShetlandSheepdog16	0_ShetlandSheepdog17	0_ShetlandSheepdog18	0_ShibaInu01	0_ShibaInu02	0_ShibaInu03	0_ShibaInu04	0_ShihTzu01	0_ShihTzu02	0_Shikoku01	0_SiberianHusky01	0_SiberianHusky02	0_SiberianHusky04	0_SiberianHusky05	0_SideStripedJackal01	0_SilkyTerrier01	0_SilkyTerrier02	0_SilkyTerrier03	0_SkyeTerrier01	0_SkyeTerrier02	0_Sloughi01	0_Sloughi02	0_Sloughi03	0_Sloughi04	0_SmallMunsterlander01	0_SmallMunsterlander02	0_SmoothFoxTerrier01	0_SmoothFoxTerrier02	0_SmoothFoxTerrier03	0_SmoothFoxTerrier04	0_SmoothFoxTerrier05	0_SmoothFoxTerrier06	0_SoftCoatedWheatenTerrier01	0_SoftCoatedWheatenTerrier02	0_SoftCoatedWheatenTerrier03	0_SoftCoatedWheatenTerrier04	0_SoftCoatedWheatenTerrier05	0_SoftCoatedWheatenTerrier06	0_SoftCoatedWheatenTerrier07	0_SpanishGalgo01	0_SpanishWaterDog01	0_SpinoneItaliano01	0_SpinoneItaliano02	0_SpinoneItaliano03	0_SpinoneItaliano04	0_SpinoneItaliano05	0_SpinoneItaliano06	0_SpinoneItaliano07	0_SpinoneItaliano08	0_Stabyhoun01	0_StaffordshireBullTerrier01	0_StaffordshireBullTerrier02	0_StaffordshireBullTerrier03	0_StandardPoodle01	0_StandardPoodle02	0_StandardPoodle03	0_StandardPoodle04	0_StandardPoodle05	0_StandardPoodle06	0_StandardPoodle07	0_StandardPoodle08	0_StandardSchnauzer01	0_StandardSchnauzer02	0_StandardSchnauzer03	0_StandardSchnauzer04	0_StandardSchnauzer05	0_StandardSchnauzer06	0_StandardSchnauzer07	0_StdManchesterTerrier010_StdManchesterTerrier02	0_StdManchesterTerrier03	0_StdManchesterTerrier04	0_StdManchesterTerrier05	0_StdManchesterTerrier06	0_SussexSpaniel01	0_SussexSpaniel02	0_SussexSpaniel03	0_SussexSpaniel04	0_SussexSpaniel00_SussexSpaniel06	0_SwedishLapphund01	0_SwedishVallhund01	0_TeddyRooseveltTerrier01	0_TeddyRooseveltTerrier00_TeddyRooseveltTerrier03	0_TibetanMastiff01	0_TibetanMastiff02	0_TibetanMastiff03	0_TibetanMastiff04	0_TibetanMastiff05	0_TibetanMastiff06	0_TibetanMastiff07	0_TibetanMastiff08	0_TibetanMastiff09	0_TibetanMastiff10	0_TibetanMastiff11	0_TibetanSpaniel01	0_TibetanSpaniel02	0_TibetanSpaniel03	0_TibetanSpaniel04	0_TibetanSpaniel05	0_TibetanSpaniel06	0_TibetanSpaniel07	0_TibetanSpaniel08	0_TibetanSpaniel09	0_TibetanSpaniel10	0_TibetanSpaniel11	0_TibetanSpaniel12	0_TibetanSpaniel13	0_TibetanSpaniel14	0_TibetanTerrier01	0_TibetanTerrier02	0_TibetanTerrier03	0_TibetanTerrier04	0_TibetanTerrier05	0_TibetanTerrier06	0_TimberWolf01	0_Tornjak01	0_TosaInu01	0_TosaInu02	0_ToyFoxTerrier01	0_ToyFoxTerrier02	0_ToyFoxTerrier03	0_ToyFoxTerrier04	0_ToyFoxTerrier05	0_ToyFoxTerrier06	0_ToyFoxTerrier07	0_ToyPoodle01	0_ToyPoodle02	0_ToyPoodle03	0_ToyPoodle04	0_TreeingWalkerCoonhound01	0_TreeingWalkerCoonhound02	0_UnknownBreed030_UnknownBreed04	0_UnknownBreed05	0_UnknownBreed07	0_UnknownBreed09	0_UnknownBreed10	0_UnknownBreed110_UnknownBreed12	0_UnknownBreed13	0_UnknownBreed14	0_UnknownBreed15	0_UnknownBreed16	0_UnknownBreed170_UnknownBreed18	0_UnknownBreed19	0_UnknownBreed20	0_UnknownBreed21	0_UnknownBreed22	0_UnknownBreed230_UnknownBreed24	0_UnknownBreed25	0_UnknownBreed26	0_UnknownBreed27	0_UnknownBreed28	0_UnknownBreed290_UnknownPoodle01	0_VillDog_Africa01	0_VillDog_Australia01	0_VillDog_Bali01	0_VillDog_Borneo01	0_VillDog_Borneo02	0_VillDog_Borneo03	0_VillDog_China01	0_VillDog_China02	0_VillDog_China03	0_VillDog_China00_VillDog_China05	0_VillDog_China06	0_VillDog_China07	0_VillDog_China08	0_VillDog_China09	0_VillDog_China10	0_VillDog_China11	0_VillDog_China12	0_VillDog_China13	0_VillDog_China14	0_VillDog_China10_VillDog_China16	0_VillDog_China17	0_VillDog_China18	0_VillDog_China19	0_VillDog_China20	0_VillDog_China21	0_VillDog_China22	0_VillDog_China23	0_VillDog_China24	0_VillDog_China25	0_VillDog_China20_VillDog_China27	0_VillDog_China28	0_VillDog_China29	0_VillDog_China30	0_VillDog_China31	0_VillDog_China32	0_VillDog_China33	0_VillDog_China34	0_VillDog_China35	0_VillDog_China36	0_VillDog_China30_VillDog_China38	0_VillDog_China39	0_VillDog_China40	0_VillDog_China41	0_VillDog_China42	0_VillDog_China43	0_VillDog_China44	0_VillDog_China45	0_VillDog_China46	0_VillDog_China47	0_VillDog_China40_VillDog_China49	0_VillDog_China50	0_VillDog_China51	0_VillDog_China52	0_VillDog_Egypt01	0_VillDog_Egypt02	0_VillDog_India01	0_VillDog_India02	0_VillDog_India03	0_VillDog_India04	0_VillDog_India00_VillDog_Lebanon01	0_VillDog_Lebanon02	0_VillDog_Lebanon03	0_VillDog_Namibia01	0_VillDog_Namibia02	0_VillDog_Namibia03	0_VillDog_PapuaNG01	0_VillDog_PapuaNG02	0_VillDog_PapuaNG03	0_VillDog_Portugal01	0_VillDog_Portugal02	0_VillDog_Portugal03	0_VillDog_Qatar01	0_VillDog_Qatar02	0_VillDog_Taiwan01	0_VillDog_Vietnam01	0_VillDog_Vietnam02	0_VillDog_Vietnam03	0_VillDog_Vietnam04	0_VillDog_Vietnam05	0_VillDog_Vietnam06	0_Vizsla01	0_Vizsla02	0_Vizsla03	0_Weimaraner01	0_Weimaraner02	0_Weimaraner03	0_Weimaraner04	0_Weimaraner05	0_WelshSpringerSpaniel01	0_WelshSpringerSpaniel02	0_WelshTerrier01	0_WelshTerrier02	0_WelshTerrier03	0_WelshTerrier04	0_WestHighlandWhiteTerr01	0_WestHighlandWhiteTerr02	0_WestHighlandWhiteTerr03	0_WestHighlandWhiteTerr00_WestHighlandWhiteTerr05	0_WestHighlandWhiteTerr06	0_WestHighlandWhiteTerr08	0_WestHighlandWhiteTerr09	0_WestHighlandWhiteTerr10	0_WestHighlandWhiteTerr11	0_WestHighlandWhiteTerr12	0_WestHighlandWhiteTerr13	0_WestHighlandWhiteTerr15	0_WestHighlandWhiteTerr16	0_WestHighlandWhiteTerr17	0_WestHighlandWhiteTerr18	0_WestHighlandWhiteTerr19	0_WestHighlandWhiteTerr20	0_WestHighlandWhiteTerr21	0_WestHighlandWhiteTerr22	0_WestHighlandWhiteTerr23	0_WestHighlandWhiteTerr24	0_WestHighlandWhiteTerr25	0_WestHighlandWhiteTerr26	0_WestHighlandWhiteTerr27	0_WestHighlandWhiteTerr28	0_WestHighlandWhiteTerr29	0_Whippet01	0_Whippet02	0_Whippet03	0_Whippet04	0_WireFoxTerrier01	0_WireFoxTerrier02	0_WirehairedPointingGriffon01	0_WirehairedPointingGriffon02	0_WirehairedPointingGriffon03	0_Wolf01	0_Wolf02	0_Wolf03	0_Wolf04	0_Wolf05	0_Wolf06	0_Wolf07	0_Wolf08	0_Wolf100	0_Wolf101	0_Wolf102	0_Wolf103	0_Wolf104	0_Wolf100_Wolf106	0_Wolf107	0_Wolf108	0_Wolf109	0_Wolf110	0_Wolf111	0_Wolf112	0_Wolf18	0_Wolf19	0_Wolf20	0_Wolf21	0_Wolf22	0_Wolf23	0_Wolf24	0_Wolf25	0_Wolf26	0_Wolf270_Wolf28	0_Wolf29	0_Wolf30	0_Wolf31	0_Wolf32	0_Wolf33	0_Wolf34	0_Wolf35	0_Wolf360_Wolf37	0_Wolf38	0_Wolf39	0_Wolf40	0_Wolf41	0_Wolf42	0_Wolf43	0_Wolf44	0_Wolf450_Wolf46	0_Wolf47	0_Wolf48	0_Wolf49	0_Wolf50	0_Wolf51	0_Wolf52	0_Wolf53	0_Wolf540_Wolf55	0_Wolf56	0_Wolf57	0_Wolf58	0_Wolf59	0_Wolf60	0_Wolf61	0_Wolf62	0_Wolf630_Wolf64	0_Wolf65	0_Wolf66	0_Wolf67	0_Wolf68	0_Wolf69	0_Wolf70	0_Wolf71	0_Wolf720_Wolf73	0_Wolf74	0_Wolf75	0_Wolf76	0_Wolf77	0_Wolf78	0_Wolf79	0_Wolf80	0_Wolf810_Wolf82	0_Wolf83	0_Wolf84	0_Wolf85	0_Wolf86	0_Wolf87	0_Wolf88	0_Wolf89	0_Wolf900_Wolf91	0_Wolf92	0_Wolf93	0_Wolf94	0_Wolf95	0_Wolf96	0_Wolf97	0_Wolf98	0_Wolf990_WolfTibetan01	0_WolfTibetan02	0_WolfTibetan03	0_WolfTibetan04	0_WolfTibetan05	0_WolfTibetan06	0_WolfTibetan07	0_WolfTibetan08	0_Wolf_WO001_895	0_Wolf_WO002_732	0_Wolf_WO003_636	0_XiasiDog01	0_Xoloitzcuintli01	0_Xoloitzcuintli02	0_Xoloitzcuintli03	0_YorkshireTerrier01	0_YorkshireTerrier02	0_YorkshireTerrier03	0_YorkshireTerrier05	0_YorkshireTerrier06	0_YorkshireTerrier08	0_YorkshireTerrier09	0_YorkshireTerrier11	0_YorkshireTerrier12	0_YorkshireTerrier13	0_YorkshireTerrier14	0_YorkshireTerrier15	0_YorkshireTerrier16	0_YorkshireTerrier17	0_YorkshireTerrier18	0_YorkshireTerrier19	0_YorkshireTerrier21	0_YorkshireTerrier22	0_YorkshireTerrier23	0_YorkshireTerrier24	0_YorkshireTerrier25	0_YorkshireTerrier26	0_YorkshireTerrier27	0_YorkshireTerrier28	0_YorkshireTerrier29	0_YorkshireTerrier30	0_YorkshireTerrier31	0_YorkshireTerrier32	0_YorkshireTerrier33	0_YorkshireTerrier34	0_YorkshireTerrier35	0_YorkshireTerrier36	0_YorkshireTerrier37	0_YorkshireTerrier38	0_YorkshireTerrier39	0_YorkshireTerrier40	0_YorkshireTerrier41	0_YorkshireTerrier42	0_YorkshireTerrier43	0_YorkshireTerrier44	0_YorkshireTerrier45	0_YorkshireTerrier46	0_YorkshireTerrier47	0_YorkshireTerrier48	0_YorkshireTerrier49	0_YorkshireTerrier50	0_YorkshireTerrier51	0_YorkshireTerrier52	0_YorkshireTerrier53	0_YorkshireTerrier54	0_YorkshireTerrier55	0_YorkshireTerrier56	0_YorkshireTerrier57	0_YorkshireTerrier58	0_YorkshireTerrier59	0_YorkshireTerrier62	0_YorkshireTerrier63	0_YorkshireTerrier64	0_YorkshireTerrier65	0_YorkshireTerrier66	0_YorkshireTerrier67	0_YorkshireTerrier68	0_YorkshireTerrier69	0_YorkshireTerrier70	0_YorkshireTerrier71	0_YorkshireTerrier72	0_YorkshireTerrier73	0_YorkshireTerrier74	0_YorkshireTerrier75	0_YorkshireTerrier76	0_YorkshireTerrier77
27	2536334	.	A	G	.	.	PR	GT	0	0	0	0	3	0	2	2
27	2536351	.	C	G	.	.	PR	GT	0	0	0	0	0	0	0	0
27	2536352	.	G	A	.	.	PR	GT	0	0	0	0	0	0	0	0
[ak308@loginx2 ~]$ ls Bio310Dog/scripts
ls: cannot access 'Bio310Dog/scripts': No such file or directory
[ak308@loginx2 ~]$ ls Bio310_Dog/scripts
01_01_FGF5_subset_genes.sh        01_TYPR1_pullout_variant.sh      02_05_KRT71_slidingwindowFST.sh
01_01_FOXI3_subset_genes.sh       02_01_FGF5_filterVCF.sh          02_05_SGK3_slidingwindowFST.sh
01_01_KANK2_subset_genes.sh       02_01_FOXI3_filterVCF.sh         02_06_FGF5_rmNAN_slidingwindow.sh
01_01_KRT25_subset_genes.sh       02_01_KANK2_filterVCF.sh         02_06_FOXI3_rmNAN_slidingwindow.sh
01_01_SGK3_subset_genes.sh        02_01_KRT25_filterVCF.sh         02_06_KANK2_rmNAN_slidingwindow.sh
01_02_FGF5_adjustVCF.sh           02_01_KRT71_filterVCF.sh         02_06_KRT25_rmNAN_slidingwindow.sh
01_02_FOXI3_adjustVCF.sh          02_01_SGK3_filterVCF.sh          02_06_KRT71_rmNAN_slidingwindow.sh
01_02_KANK2_adjustVCF.sh          02_02_FGF5_runFST.sh             02_06_SGK3_rmNAN_slidingwindow.sh
01_02_KRT71_adjustVCF.sh          02_02_FOXI3_runFST.sh            02_adjustVCF.sh
01_02_SGK3_adjustVCF.sh           02_02_KANK2_runFST.sh            02_plot_TKTL1.sh
01_CBD103_pullout_variant.sh      02_02_KRT25_runFST.sh            a2_ADRB1_24860187_adjustVCF.sh
01_FGF5_pullout_variant.sh        02_02_KRT71_FST.sh               a2_ADRB1_24870184_adjustVCF.sh
01_filterVCF.sh                   02_02_KRT71_runFST2.sh           a2_FGF5_adjustVCF.sh
01_IGF1_pullout_variant.sh        02_02_KRT71_runFST.sh            adjustADRB1_24860187.sh
01_KRT71_pullout_variant.sh       02_02_SGK3_runFST.sh             adjustADRB1_24870184.sh
01_MC1R_pullout_variant.sh        02_03_FGF5_removeNAN.sh          example.sh
01_modernADRB1_24860187.sh        02_03_FOXI3_removeNAN.sh         m2_ADRB1_24860187_adjustVCF.sh
01_modernADRB1_24870184.sh        02_03_KANK2_removeNAN.sh         m2_ADRB1_24870184_adjustVCF.sh
01_modernFGF5_pullout_variant.sh  02_03_KRT25_removeNAN.sh         m2_FGF5_adjustVCF.sh
01_modern_pullout_variant.sh      02_03_KRT71_removeNAN.sh         pullADRB1_24860187.sh
01_pulloutADRB1_24860187.sh       02_03_SGK3_removeNAN.sh          pullADRB1_24870184.sh
01_pulloutADRB1_24870184.sh       02_05_FGF5_slidingwindowFST.sh   x_FOXI3rmNan.sh
01_selectTKTL1.sh                 02_05_FOXI3_slidingwindowFST.sh  xFOXI3_runFST.sh
01_SGK3_pullout_variant.sh        02_05_KANK2_slidingwindowFST.sh  x_SGK3rmNan.sh
01_subset_genes.sh                02_05_KRT25_slidingwindowFST.sh  xSGK3_runFST.sh
[ak308@loginx2 ~]$ ls Bio310_Dog/output
ADRB124870184_plink.err         FGF5_plink.out                             removeNAN_FOXI3_mutset.out
ADRB124870184_plink.out         filter_FGF5.err                            removeNAN_FOXI3.out
ak308_fstscan.err               filter_FGF5.out                            removeNAN_KANK2.err
ak308_fstscan_FGF5.err          filter_FOXI3.err                           removeNAN_KANK2.out
ak308_fstscan_FGF5.out          filter_FOXI3.out                           removeNAN_KRT25.err
ak308_fstscan_FOXI3.err         filter_KANK2.err                           removeNAN_KRT25.out
ak308_fstscan_FOXI3_mutset.err  filter_KANK2.out                           removeNAN.out
ak308_fstscan_FOXI3_mutset.out  filter_KRT25.err                           removeNAN_SGK3.err
ak308_fstscan_FOXI3.out         filter_KRT25.out                           removeNAN_SGK3_mutset.err
ak308_fstscan_KANK2.err         filter_KRT71.err                           removeNAN_SGK3_mutset.out
ak308_fstscan_KANK2.out         filter_KRT71.out                           removeNAN_SGK3.out
ak308_fstscan_KRT25.err         filter_SGK3.err                            removeNAN_window_FGF5.err
ak308_fstscan_KRT25.out         filter_SGK3.out                            removeNAN_window_FGF5.out
ak308_fstscan.out               KRT71_filtered_fst_results_noNAN.weir.fst  removeNAN_window_FOXI3.err
ak308_fstscan_SGK3.err          modernADRB1_24860187_plink.err             removeNAN_window_FOXI3.out
ak308_fstscan_SGK3_mutset.err   modernADRB1_24860187_plink.out             removeNAN_window_KANK2.err
ak308_fstscan_SGK3_mutset.out   modernADRB1_24870184_plink.err             removeNAN_window_KANK2.out
ak308_fstscan_SGK3.out          modernADRB1_24870184_plink.out             removeNAN_window_KRT25.err
ak308_fstscan_window_FGF5.err   out.err                                    removeNAN_window_KRT25.out
ak308_fstscan_window_FGF5.out   out.out                                    removeNAN_window_KRT71.err
ak308_fstscan_window_FOXI3.err  plink1.err                                 removeNAN_window_KRT71.out
ak308_fstscan_window_FOXI3.out  plink1.out                                 removeNAN_window_SGK3.err
ak308_fstscan_window_KANK2.err  plink2.err                                 removeNAN_window_SGK3.out
ak308_fstscan_window_KANK2.out  plink2.out                                 vcf1select.err
ak308_fstscan_window_KRT25.err  plink.err                                  vcf1select.out
ak308_fstscan_window_KRT25.out  plink.out                                  vcf2select.err
ak308_fstscan_window_KRT71.err  removeNAN.err                              vcf2select.out
ak308_fstscan_window_KRT71.out  removeNAN_FGF5.err                         vcfout.err
ak308_fstscan_window_SGK3.err   removeNAN_FGF5.out                         vcfout.out
ak308_fstscan_window_SGK3.out   removeNAN_FOXI3.err                        vcfselect.err
FGF5_plink.err                  removeNAN_FOXI3_mutset.err                 vcfselect.out
[ak308@loginx2 ~]$ ls /scratch/
'$USER'         cb100              gz27                                   kh211         pta2                    td52
 2509           cc236              hf_cache                               kkt3863       pvk4                    td62
 aa255          cc270              hg77                                   kl115         py14                    ti12
 aa270          ccj3               hh83                                   kl212         py18                    tjg7
 aa502          cd110              hh87                                   km82          pzz1                    tl165
 aab27          cd118              hhq1                                   ks256         qj3                     tl206
 ab215          cdm8               hk61                                   kt68          qmt1                    tl212
 ab362          cg105              hmk3                                   kvs5          quantum-fracture        tm162
 ab362_upload   cg160              hs151                                  ky58          qz58                    tm76
 abo1           ch218              hs55                                   ky65          ra80                    tnn3
 ac508          cjh16              hs65                                   kyp3          ral11                   tps2
 acs22          ck57               hs75                                   la72          range                   trino
 ad155          cl271              hw105                                  lf33          rc151                   ts123
 ad158          cl307              hw50                                   lh106         RFdiffusion2            ua12
 ad202          cnw3               hw61                                   lh82          rg157                   ubr1
 ad205          cold               hx50                                   lj53          rgx1                    usr
 aet11          comp-646-g9        hz102                                  ll215         rh120                   vc65
 agc10          cps8               hz125                                  lmc16         rh125                   vc68
 ah305          cs202              hz125_busan_seed498_620_full3d         ln38          rj65                    venv_boltz
 ahamilto       cs250              hz125_busan_seed498_620_full3d_rerun   lo21          rj66                    vme2
 aj162          cs301              ib28                                   ls151         rl152                   vo9
 aje5           cw106              ic33                                   lw112         rl166                   vt20
 ajg18          cw220              id33                                   lw118         rl182                   vv50
 ajo4           cz106              il51                                   lw158         rm166                   was6
 ajo6           da73               imgthla                                ly62          rm92                    wd28
 ak308          db211              jb310                                  lz112         ro21                    wg25
 ak331          dc118              jc165                                  lz116         rotpys                  wn18
 al255          ddv0               jc380                                  ma200         rr162                   work
 al283          dl165              jca4                                   ma225         rt67                    xalt
 al318          dl165_1            jd111                                  may7          rt71                    XALT
 al72           dl82               jdr15                                  mc275         rt_76641_102514         xf15
 am209          dm110              jds28                                  me57          rt_76641_102561         xh14
 am503          ds221              jeh16                                  mh157         rt_76641_2004083        xt18
 am538          ea14               jf203                                  mitchm        rt_76641_2004549_test   xw105
 am555          ed31               jg121                                  mj56          ry25                    xy66
 am556          ee19               jga7                                   mm146         rz70                    xy68
 am560          ee70               jh201                                  mm207         sa230                   xz118
 am572          ef35               jj110                                  mm500         saz2                    yag1
 am585          eh111              jj88                                   mnm5          sb272                   yb56_exp7_venv
 amk19          el106              jk103                                  mp183         sb28                    yc258
 anz2           elm9               jk84                                   ms162         sb308                   yf32
 ap105          Enina              jl259                                  mt123         sb95                    yf33
 ap121          es166              jlm21                                  mt158         sc252                   yg108
 aqc3           es216              jls24                                  mt180         sc333                   yh106
 ar163          extract_core.f90   jm139                                  mv58          sc333_exp7              yh155
 ar237          ez32               jm163                                  mv63          sc333venv               yh163
 arthniwa       fa33               jm310                                  mw127         sc338                   yh165
 as143          fb31               jm312                                  mw165         sd205                   yh181
 as327          fc36               jm362                                  mw88          sd75                    yj67
 as610          fg23               johnmc                                 my13          sd81                    yj68
 ats16          fg32               jp116                                  mz81          sg161                   yl252
 av77           fg53               jp97                                   nc128         sg207                   yl331
 avg2           fh31               jpf2                                   nc76          sg233                   yl366
 aw186          fj203              jq15                                   nh71          sh232                   yt52
 aw200          fl58               jr218                                  np105         sh253                   yt70
 aw68           fmq1               jra15                                  nr57          sj157                   yw162
 aw80           fort.16            js190                                  ns115         sl206                   yw251
 awl10          fw32               js201                                  ns157         sl323                   yw258
 az81           fy27               js232                                  ns165         sl387                   yx106
 bb112          gap6               js237                                  ns58          sm385                   yx51
 bf28           gc51               jw306                                  nv50          sm530                   yy101
 bfk1           gg57               jw310                                  nwc1          sm530_new               yz220
 bh73           gg72               jw336                                  oa25          sm532                   yz288
 bhc4           gjm3               jy152                                  or6           sp258                   yz316
 bm68           gl78               jy158                                  os35          sr                      zc56
 bp32           gm26               jz200                                  pc45          sr59                    zf28
 br62           gn6                jz201                                  pc63          ss227                   zg33
 bs115          go15               jz202                                  pip-cache     ss300                   zl208
 bs82           gptq-env           jz73                                   pj11          ss508                   zs56
 bw53           gptq-env-311       ka80                                   pj16          ss516                   zw151
 byh1           GPTQModel          kallisto                               pmhclib       ss573                   zy20
 bz35           grc3               kam23                                  pom1          supremm                 zy68
 bz65           grc3_marker.txt    kb180                                  pp63          sy128                   zy75
 cab22          gw23               kc218                                  pp65          sz121                   zz185
 cah20          gy18               kg115                                  ps165         sz128
 cam36          gy20               kg52                                   ps165folder   tc82
[ak308@loginx2 ~]$ cd adk308
-bash: cd: adk308: No such file or directory
[ak308@loginx2 ~]$ cd ak308
-bash: cd: ak308: No such file or directory
[ak308@loginx2 ~]$ ls
Bio310_Dog  Desktop  Dholes  Software
[ak308@loginx2 ~]$ cd /scratch/
[ak308@loginx2 scratch]$ cd ak308
[ak308@loginx2 ak308]$ ls
Bio310_Dog  dholes
[ak308@loginx2 ak308]$ mv dholes Dholes
[ak308@loginx2 ak308]$ ls
Bio310_Dog  Dholes
[ak308@loginx2 ak308]$ squeue -u ak308
             JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
[ak308@loginx2 ak308]$ cd
[ak308@loginx2 ~]$ ls
Bio310_Dog  Desktop  Dholes  Software
[ak308@loginx2 ~]$ grep -rn "\.vcf" Bio310_Dog/scripts/
Bio310_Dog/scripts/01_modern_pullout_variant.sh:16:VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vcf.gz
Bio310_Dog/scripts/02_02_KRT71_runFST2.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/KRT71_filtered.recode.vcf
Bio310_Dog/scripts/m2_FGF5_adjustVCF.sh:12:VCF=/scratch/ak308/Bio310_Dog/Results/modernFGF5_vcf_ancientcanids.recode.vcf
Bio310_Dog/scripts/01_02_FGF5_adjustVCF.sh:11:VCF=/scratch/ak308/Bio310_Dog/Results/FGF5_vcf.recode.vcf
Bio310_Dog/scripts/01_01_FOXI3_subset_genes.sh:16:VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vcf.gz
Bio310_Dog/scripts/01_01_FGF5_subset_genes.sh:16:VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vc.gz
Bio310_Dog/scripts/xFOXI3_runFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/FOXI3_filtered.recode.vcf
Bio310_Dog/scripts/02_05_SGK3_slidingwindowFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/SGK3_filtered.recode.vcf
Bio310_Dog/scripts/01_FGF5_pullout_variant.sh:16:VCF=/scratch/lh106/SharedData//merged_phased_annotated.Autosomes_ancientdogdingo_FINAL_MAF_0.01_recalibrated_INFO_0.8.vcf.gz
Bio310_Dog/scripts/02_01_SGK3_filterVCF.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/SGK3_vcf.recode.vcf
Bio310_Dog/scripts/adjustADRB1_24870184.sh:11:VCF=/scratch/ak308/Bio310_Dog/Results/ADRB1_24870184_vcf.recode.vcf
Bio310_Dog/scripts/01_02_KRT71_adjustVCF.sh:11:VCF=/scratch/ak308/Bio310_Dog/Results/KRT71_vcf.recode.vcf
Bio310_Dog/scripts/02_05_FGF5_slidingwindowFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/FGF5_filtered.recode.vcf
Bio310_Dog/scripts/a2_ADRB1_24870184_adjustVCF.sh:11:VCF=/scratch/ak308/Bio310_Dog/Results/ADRB124870184_vcf_ancientcanids.recod.vcf
Bio310_Dog/scripts/m2_ADRB1_24870184_adjustVCF.sh:11:VCF=/scratch/ak308/Bio310_Dog/Results/modernADRB1_24870184_vcf_ancientcanids.recode.vcf
Bio310_Dog/scripts/02_02_FOXI3_runFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/FOXI3_filtered.recode.vcf
Bio310_Dog/scripts/01_modernADRB1_24860187.sh:16:VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vc.gz
Bio310_Dog/scripts/02_02_KRT25_runFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/KRT25_filtered.recode.vcf
Bio310_Dog/scripts/02_plot_TKTL1.sh:11:VCF=/scratch/ak308/Bio310_Dog/Results/TKTL1.recode.vcf
Bio310_Dog/scripts/01_MC1R_pullout_variant.sh:16:VCF=/scratch/lh106/SharedData//merged_phased_annotated.Autosomes_ancientdogdingo_FINAL_MAF_0.01_recalibrated_INFO_0.8.vcf.gz
Bio310_Dog/scripts/xSGK3_runFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/SGK3_filtered.recode.vcf
Bio310_Dog/scripts/01_SGK3_pullout_variant.sh:16:VCF=/scratch/lh106/SharedData//merged_phased_annotated.Autosomes_ancientdogdingo_FINAL_MAF_0.01_recalibrated_INFO_0.8.vcf.gz
Bio310_Dog/scripts/01_pulloutADRB1_24870184.sh:16:VCF=/scratch/lh106/SharedData//merged_phased_annotated.Autosomes_ancientdogdingo_FINAL_MAF_0.01_recalibrated_INFO_0.8.vcf.gz
Bio310_Dog/scripts/example.sh:11:VCF=/scratch/lh106/results/Data_Katia_merged_phased_annotated.chr11_MAF_0.01_recalibrated_INFO_0.8.vcf
Bio310_Dog/scripts/example.sh:12:OUT=/scratch/lh106/GDF9_locus.vcf
Bio310_Dog/scripts/01_01_KRT25_subset_genes.sh:16:VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vcf.gz
Bio310_Dog/scripts/02_05_KRT25_slidingwindowFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/KRT25_filtered.recode.vcf
Bio310_Dog/scripts/02_02_KRT71_runFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/KRT71_filtered.recode.vcf
Bio310_Dog/scripts/01_01_KANK2_subset_genes.sh:16:VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vcf.gz
Bio310_Dog/scripts/02_02_KRT71_FST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/KRT71_filtered.recode.vcf
Bio310_Dog/scripts/01_modernFGF5_pullout_variant.sh:16:VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vcf.gz
Bio310_Dog/scripts/02_01_KRT71_filterVCF.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/KRT71_vcf.recode.vcf
Bio310_Dog/scripts/02_05_KANK2_slidingwindowFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/KANK2_filtered.recode.vcf
Bio310_Dog/scripts/01_modernADRB1_24870184.sh:16:VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vc.gz
Bio310_Dog/scripts/02_01_FGF5_filterVCF.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/FGF5_vcf.recode.vcf
Bio310_Dog/scripts/02_01_FOXI3_filterVCF.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/FOXI3_vcf.recode.vcf
Bio310_Dog/scripts/02_02_FGF5_runFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/FGF5_filtered.recode.vcf
Bio310_Dog/scripts/02_02_KANK2_runFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/KANK2_filtered.recode.vcf
Bio310_Dog/scripts/02_05_FOXI3_slidingwindowFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/FOXI3_filtered.recode.vcf
Bio310_Dog/scripts/a2_ADRB1_24860187_adjustVCF.sh:11:VCF=/scratch/ak308/Bio310_Dog/Results/ADRB124860187_vcf_ancientcanids.recod.vcf
Bio310_Dog/scripts/01_TYPR1_pullout_variant.sh:16:VCF=/scratch/lh106/SharedData//merged_phased_annotated.Autosomes_ancientdogdingo_FINAL_MAF_0.01_recalibrated_INFO_0.8.vcf.gz
Bio310_Dog/scripts/01_CBD103_pullout_variant.sh:16:VCF=/scratch/lh106/SharedData//merged_phased_annotated.Autosomes_ancientdogdingo_FINAL_MAF_0.01_recalibrated_INFO_0.8.vcf.gz
Bio310_Dog/scripts/01_subset_genes.sh:16:VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vcf.gz
Bio310_Dog/scripts/m2_ADRB1_24860187_adjustVCF.sh:11:VCF=/scratch/ak308/Bio310_Dog/Results/modernADRB1_24860187_vcf_ancientcanids.recode.vcf
Bio310_Dog/scripts/01_01_SGK3_subset_genes.sh:16:VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vc.gz
Bio310_Dog/scripts/02_02_SGK3_runFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/SGK3_filtered.recode.vcf
Bio310_Dog/scripts/adjustADRB1_24860187.sh:11:VCF=/scratch/ak308/Bio310_Dog/Results/ADRB1_24860187_vcf.recode.vcf
Bio310_Dog/scripts/01_pulloutADRB1_24860187.sh:16:VCF=/scratch/lh106/SharedData//merged_phased_annotated.Autosomes_ancientdogdingo_FINAL_MAF_0.01_recalibrated_INFO_0.8.vcf.gz
Bio310_Dog/scripts/01_IGF1_pullout_variant.sh:16:VCF=/scratch/lh106/SharedData//merged_phased_annotated.Autosomes_ancientdogdingo_FINAL_MAF_0.01_recalibrated_INFO_0.8.vcf.gz
Bio310_Dog/scripts/a2_FGF5_adjustVCF.sh:11:VCF=/scratch/ak308/Bio310_Dog/Results/FGF5_vcf_ancientcanids.recode.vcf
Bio310_Dog/scripts/02_01_KRT25_filterVCF.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/KRT25_vcf.recode.vcf
Bio310_Dog/scripts/01_02_KANK2_adjustVCF.sh:11:VCF=/scratch/ak308/Bio310_Dog/Results/KANK2_vcf.recode.vcf
Bio310_Dog/scripts/02_05_KRT71_slidingwindowFST.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/KRT71_filtered.recode.vcf
grep: Bio310_Dog/scripts/.02_adjustVCF.sh.swp: binary file matches
Bio310_Dog/scripts/01_KRT71_pullout_variant.sh:16:VCF=/scratch/lh106/SharedData//merged_phased_annotated.Autosomes_ancientdogdingo_FINAL_MAF_0.01_recalibrated_INFO_0.8.vcf.gz
Bio310_Dog/scripts/pullADRB1_24860187.sh:16:VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vcf.gz
Bio310_Dog/scripts/01_selectTKTL1.sh:15:VCF=/scratch/lh106/downloads/1715g_WildSled.SNP.INDEL.chrAll_minDP3_maxmissing0.8_noindels_bialleleic_minQ30_dogswolves_again_chrX_final.recode.vcf.gz
Bio310_Dog/scripts/pullADRB1_24870184.sh:16:VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vcf.gz
Bio310_Dog/scripts/01_02_FOXI3_adjustVCF.sh:11:VCF=/scratch/ak308/Bio310_Dog/Results/FOXI3_vcf.recode.vcf
Bio310_Dog/scripts/01_02_SGK3_adjustVCF.sh:11:VCF=/scratch/ak308/Bio310_Dog/Results/SGK3_vcf.recode.vcf
Bio310_Dog/scripts/02_01_KANK2_filterVCF.sh:14:VCF=/scratch/ak308/Bio310_Dog/Results/KANK2_vcf.recode.vcf
[ak308@loginx2 ~]$ mv Desktop KRT71_chr27.vcf
[ak308@loginx2 ~]$ ls
Bio310_Dog  Dholes  KRT71_chr27.vcf  Software
[ak308@loginx2 ~]$ cd Bio310_Dog
[ak308@loginx2 Bio310_Dog]$ ls
Files  output  scripts
[ak308@loginx2 Bio310_Dog]$ cd output
[ak308@loginx2 output]$ ls
ADRB124870184_plink.err         FGF5_plink.out                             removeNAN_FOXI3_mutset.out
ADRB124870184_plink.out         filter_FGF5.err                            removeNAN_FOXI3.out
ak308_fstscan.err               filter_FGF5.out                            removeNAN_KANK2.err
ak308_fstscan_FGF5.err          filter_FOXI3.err                           removeNAN_KANK2.out
ak308_fstscan_FGF5.out          filter_FOXI3.out                           removeNAN_KRT25.err
ak308_fstscan_FOXI3.err         filter_KANK2.err                           removeNAN_KRT25.out
ak308_fstscan_FOXI3_mutset.err  filter_KANK2.out                           removeNAN.out
ak308_fstscan_FOXI3_mutset.out  filter_KRT25.err                           removeNAN_SGK3.err
ak308_fstscan_FOXI3.out         filter_KRT25.out                           removeNAN_SGK3_mutset.err
ak308_fstscan_KANK2.err         filter_KRT71.err                           removeNAN_SGK3_mutset.out
ak308_fstscan_KANK2.out         filter_KRT71.out                           removeNAN_SGK3.out
ak308_fstscan_KRT25.err         filter_SGK3.err                            removeNAN_window_FGF5.err
ak308_fstscan_KRT25.out         filter_SGK3.out                            removeNAN_window_FGF5.out
ak308_fstscan.out               KRT71_filtered_fst_results_noNAN.weir.fst  removeNAN_window_FOXI3.err
ak308_fstscan_SGK3.err          modernADRB1_24860187_plink.err             removeNAN_window_FOXI3.out
ak308_fstscan_SGK3_mutset.err   modernADRB1_24860187_plink.out             removeNAN_window_KANK2.err
ak308_fstscan_SGK3_mutset.out   modernADRB1_24870184_plink.err             removeNAN_window_KANK2.out
ak308_fstscan_SGK3.out          modernADRB1_24870184_plink.out             removeNAN_window_KRT25.err
ak308_fstscan_window_FGF5.err   out.err                                    removeNAN_window_KRT25.out
ak308_fstscan_window_FGF5.out   out.out                                    removeNAN_window_KRT71.err
ak308_fstscan_window_FOXI3.err  plink1.err                                 removeNAN_window_KRT71.out
ak308_fstscan_window_FOXI3.out  plink1.out                                 removeNAN_window_SGK3.err
ak308_fstscan_window_KANK2.err  plink2.err                                 removeNAN_window_SGK3.out
ak308_fstscan_window_KANK2.out  plink2.out                                 vcf1select.err
ak308_fstscan_window_KRT25.err  plink.err                                  vcf1select.out
ak308_fstscan_window_KRT25.out  plink.out                                  vcf2select.err
ak308_fstscan_window_KRT71.err  removeNAN.err                              vcf2select.out
ak308_fstscan_window_KRT71.out  removeNAN_FGF5.err                         vcfout.err
ak308_fstscan_window_SGK3.err   removeNAN_FGF5.out                         vcfout.out
ak308_fstscan_window_SGK3.out   removeNAN_FOXI3.err                        vcfselect.err
FGF5_plink.err                  removeNAN_FOXI3_mutset.err                 vcfselect.out
[ak308@loginx2 output]$ cd
[ak308@loginx2 ~]$ cd /scratch/ak308
[ak308@loginx2 ak308]$ ls
Bio310_Dog  Dholes
[ak308@loginx2 ak308]$ cd Bio310_Dog
[ak308@loginx2 Bio310_Dog]$ ls
Files  Results
[ak308@loginx2 Bio310_Dog]$ cd Results
[ak308@loginx2 Results]$ ls
ADRB124860187_vcf_ancientcanids_bed.bed           FGF5_vcf_ancientcanids_bed.log
ADRB124860187_vcf_ancientcanids_bed.bim           FGF5_vcf_ancientcanids_bed.nosex
ADRB124860187_vcf_ancientcanids_bed.fam           FGF5_vcf_ancientcanids_finalcoded.log
ADRB124860187_vcf_ancientcanids_bed.log           FGF5_vcf_ancientcanids_finalcoded.nosex
ADRB124860187_vcf_ancientcanids_bed.nosex         FGF5_vcf_ancientcanids_finalcoded.vcf
ADRB124860187_vcf_ancientcanids_finalcoded.log    FGF5_vcf_ancientcanids_plink.log
ADRB124860187_vcf_ancientcanids_finalcoded.nosex  FGF5_vcf_ancientcanids_plink.map
ADRB124860187_vcf_ancientcanids_finalcoded.vcf    FGF5_vcf_ancientcanids_plink.nosex
ADRB124860187_vcf_ancientcanids_plink.log         FGF5_vcf_ancientcanids_plink.ped
ADRB124860187_vcf_ancientcanids_plink.map         FGF5_vcf_ancientcanids.recode.vcf
ADRB124860187_vcf_ancientcanids_plink.nosex       IGF1_vcf_ancientcanids.recode.vcf
ADRB124860187_vcf_ancientcanids_plink.ped         KRT71_vcf_ancientcanids.recode.vcf
ADRB124860187_vcf_ancientcanids.recode.vcf        MC1R_vcf_ancientcanids.recode.vcf
ADRB1_24860187_vcf_bed.bed                        modernADRB1_24860187_vcf_ancientcanids_bed.bed
ADRB1_24860187_vcf_bed.bim                        modernADRB1_24860187_vcf_ancientcanids_bed.bim
ADRB1_24860187_vcf_bed.fam                        modernADRB1_24860187_vcf_ancientcanids_bed.fam
ADRB1_24860187_vcf_bed.log                        modernADRB1_24860187_vcf_ancientcanids_bed.log
ADRB1_24860187_vcf_bed.nosex                      modernADRB1_24860187_vcf_ancientcanids_bed.nosex
ADRB1_24860187_vcf_finalcoded.log                 modernADRB1_24860187_vcf_ancientcanids_finalcoded.log
ADRB1_24860187_vcf_finalcoded.nosex               modernADRB1_24860187_vcf_ancientcanids_finalcoded.nosex
ADRB1_24860187_vcf_finalcoded.vcf                 modernADRB1_24860187_vcf_ancientcanids_finalcoded.vcf
ADRB1_24860187_vcf_plink.log                      modernADRB1_24860187_vcf_ancientcanids_plink.log
ADRB1_24860187_vcf_plink.map                      modernADRB1_24860187_vcf_ancientcanids_plink.map
ADRB1_24860187_vcf_plink.nosex                    modernADRB1_24860187_vcf_ancientcanids_plink.nosex
ADRB1_24860187_vcf_plink.ped                      modernADRB1_24860187_vcf_ancientcanids_plink.ped
ADRB1_24860187_vcf.recode.vcf                     modernADRB1_24860187_vcf_ancientcanids.recode.vcf
ADRB124870184_vcf_ancientcanids_bed.bed           modernADRB1_24870184_vcf_ancientcanids_bed.bed
ADRB124870184_vcf_ancientcanids_bed.bim           modernADRB1_24870184_vcf_ancientcanids_bed.bim
ADRB124870184_vcf_ancientcanids_bed.fam           modernADRB1_24870184_vcf_ancientcanids_bed.fam
ADRB124870184_vcf_ancientcanids_bed.log           modernADRB1_24870184_vcf_ancientcanids_bed.log
ADRB124870184_vcf_ancientcanids_bed.nosex         modernADRB1_24870184_vcf_ancientcanids_bed.nosex
ADRB124870184_vcf_ancientcanids_finalcoded.log    modernADRB1_24870184_vcf_ancientcanids_finalcoded.log
ADRB124870184_vcf_ancientcanids_finalcoded.nosex  modernADRB1_24870184_vcf_ancientcanids_finalcoded.nosex
ADRB124870184_vcf_ancientcanids_finalcoded.vcf    modernADRB1_24870184_vcf_ancientcanids_finalcoded.vcf
ADRB124870184_vcf_ancientcanids_plink.log         modernADRB1_24870184_vcf_ancientcanids_plink.log
ADRB124870184_vcf_ancientcanids_plink.map         modernADRB1_24870184_vcf_ancientcanids_plink.map
ADRB124870184_vcf_ancientcanids_plink.nosex       modernADRB1_24870184_vcf_ancientcanids_plink.nosex
ADRB124870184_vcf_ancientcanids_plink.ped         modernADRB1_24870184_vcf_ancientcanids_plink.ped
ADRB124870184_vcf_ancientcanids.recode.vcf        modernADRB1_24870184_vcf_ancientcanids.recode.vcf
ADRB1_24870184_vcf_bed.bed                        modernFGF5_vcf_ancientcanids_bed.bed
ADRB1_24870184_vcf_bed.bim                        modernFGF5_vcf_ancientcanids_bed.bim
ADRB1_24870184_vcf_bed.fam                        modernFGF5_vcf_ancientcanids_bed.fam
ADRB1_24870184_vcf_bed.log                        modernFGF5_vcf_ancientcanids_bed.log
ADRB1_24870184_vcf_bed.nosex                      modernFGF5_vcf_ancientcanids_bed.nosex
ADRB1_24870184_vcf_finalcoded.log                 modernFGF5_vcf_ancientcanids_finalcoded.log
ADRB1_24870184_vcf_finalcoded.nosex               modernFGF5_vcf_ancientcanids_finalcoded.nosex
ADRB1_24870184_vcf_finalcoded.vcf                 modernFGF5_vcf_ancientcanids_finalcoded.vcf
ADRB1_24870184_vcf_plink.log                      modernFGF5_vcf_ancientcanids_plink.log
ADRB1_24870184_vcf_plink.map                      modernFGF5_vcf_ancientcanids_plink.map
ADRB1_24870184_vcf_plink.nosex                    modernFGF5_vcf_ancientcanids_plink.nosex
ADRB1_24870184_vcf_plink.ped                      modernFGF5_vcf_ancientcanids_plink.ped
ADRB1_24870184_vcf.recode.vcf                     modernFGF5_vcf_ancientcanids.recode.vcf
CBD103_vcf_ancientcanids.recode.vcf               modern_vcf_ancientcanids.recode.vcf
FGF5_vcf_ancientcanids_bed.bed                    SGK3_vcf_ancientcanids.recode.vcf
FGF5_vcf_ancientcanids_bed.bim                    TYRP1_vcf_ancientcanids.recode.vcf
FGF5_vcf_ancientcanids_bed.fam
[ak308@loginx2 Results]$ cd .. 
[ak308@loginx2 Bio310_Dog]$ cd Files
[ak308@loginx2 Files]$ ls
[ak308@loginx2 Files]$ ls
[ak308@loginx2 Files]$ cd
[ak308@loginx2 ~]$ ls
Bio310_Dog  Dholes  KRT71_chr27.vcf  Software
[ak308@loginx2 ~]$ mv KRT71_chr27.vcf /scratch/ak308/Bio310_Dog/Results/
mv: setting attribute 'system.nfs4_acl' for 'system.nfs4_acl': Operation not permitted
[ak308@loginx2 ~]$ ls -R /scratch/ak308
/scratch/ak308:
Bio310_Dog  Dholes

/scratch/ak308/Bio310_Dog:
Files  Results

/scratch/ak308/Bio310_Dog/Files:

/scratch/ak308/Bio310_Dog/Results:
ADRB124860187_vcf_ancientcanids_bed.bed           FGF5_vcf_ancientcanids_bed.log
ADRB124860187_vcf_ancientcanids_bed.bim           FGF5_vcf_ancientcanids_bed.nosex
ADRB124860187_vcf_ancientcanids_bed.fam           FGF5_vcf_ancientcanids_finalcoded.log
ADRB124860187_vcf_ancientcanids_bed.log           FGF5_vcf_ancientcanids_finalcoded.nosex
ADRB124860187_vcf_ancientcanids_bed.nosex         FGF5_vcf_ancientcanids_finalcoded.vcf
ADRB124860187_vcf_ancientcanids_finalcoded.log    FGF5_vcf_ancientcanids_plink.log
ADRB124860187_vcf_ancientcanids_finalcoded.nosex  FGF5_vcf_ancientcanids_plink.map
ADRB124860187_vcf_ancientcanids_finalcoded.vcf    FGF5_vcf_ancientcanids_plink.nosex
ADRB124860187_vcf_ancientcanids_plink.log         FGF5_vcf_ancientcanids_plink.ped
ADRB124860187_vcf_ancientcanids_plink.map         FGF5_vcf_ancientcanids.recode.vcf
ADRB124860187_vcf_ancientcanids_plink.nosex       IGF1_vcf_ancientcanids.recode.vcf
ADRB124860187_vcf_ancientcanids_plink.ped         KRT71_chr27.vcf
ADRB124860187_vcf_ancientcanids.recode.vcf        KRT71_vcf_ancientcanids.recode.vcf
ADRB1_24860187_vcf_bed.bed                        MC1R_vcf_ancientcanids.recode.vcf
ADRB1_24860187_vcf_bed.bim                        modernADRB1_24860187_vcf_ancientcanids_bed.bed
ADRB1_24860187_vcf_bed.fam                        modernADRB1_24860187_vcf_ancientcanids_bed.bim
ADRB1_24860187_vcf_bed.log                        modernADRB1_24860187_vcf_ancientcanids_bed.fam
ADRB1_24860187_vcf_bed.nosex                      modernADRB1_24860187_vcf_ancientcanids_bed.log
ADRB1_24860187_vcf_finalcoded.log                 modernADRB1_24860187_vcf_ancientcanids_bed.nosex
ADRB1_24860187_vcf_finalcoded.nosex               modernADRB1_24860187_vcf_ancientcanids_finalcoded.log
ADRB1_24860187_vcf_finalcoded.vcf                 modernADRB1_24860187_vcf_ancientcanids_finalcoded.nosex
ADRB1_24860187_vcf_plink.log                      modernADRB1_24860187_vcf_ancientcanids_finalcoded.vcf
ADRB1_24860187_vcf_plink.map                      modernADRB1_24860187_vcf_ancientcanids_plink.log
ADRB1_24860187_vcf_plink.nosex                    modernADRB1_24860187_vcf_ancientcanids_plink.map
ADRB1_24860187_vcf_plink.ped                      modernADRB1_24860187_vcf_ancientcanids_plink.nosex
ADRB1_24860187_vcf.recode.vcf                     modernADRB1_24860187_vcf_ancientcanids_plink.ped
ADRB124870184_vcf_ancientcanids_bed.bed           modernADRB1_24860187_vcf_ancientcanids.recode.vcf
ADRB124870184_vcf_ancientcanids_bed.bim           modernADRB1_24870184_vcf_ancientcanids_bed.bed
ADRB124870184_vcf_ancientcanids_bed.fam           modernADRB1_24870184_vcf_ancientcanids_bed.bim
ADRB124870184_vcf_ancientcanids_bed.log           modernADRB1_24870184_vcf_ancientcanids_bed.fam
ADRB124870184_vcf_ancientcanids_bed.nosex         modernADRB1_24870184_vcf_ancientcanids_bed.log
ADRB124870184_vcf_ancientcanids_finalcoded.log    modernADRB1_24870184_vcf_ancientcanids_bed.nosex
ADRB124870184_vcf_ancientcanids_finalcoded.nosex  modernADRB1_24870184_vcf_ancientcanids_finalcoded.log
ADRB124870184_vcf_ancientcanids_finalcoded.vcf    modernADRB1_24870184_vcf_ancientcanids_finalcoded.nosex
ADRB124870184_vcf_ancientcanids_plink.log         modernADRB1_24870184_vcf_ancientcanids_finalcoded.vcf
ADRB124870184_vcf_ancientcanids_plink.map         modernADRB1_24870184_vcf_ancientcanids_plink.log
ADRB124870184_vcf_ancientcanids_plink.nosex       modernADRB1_24870184_vcf_ancientcanids_plink.map
ADRB124870184_vcf_ancientcanids_plink.ped         modernADRB1_24870184_vcf_ancientcanids_plink.nosex
ADRB124870184_vcf_ancientcanids.recode.vcf        modernADRB1_24870184_vcf_ancientcanids_plink.ped
ADRB1_24870184_vcf_bed.bed                        modernADRB1_24870184_vcf_ancientcanids.recode.vcf
ADRB1_24870184_vcf_bed.bim                        modernFGF5_vcf_ancientcanids_bed.bed
ADRB1_24870184_vcf_bed.fam                        modernFGF5_vcf_ancientcanids_bed.bim
ADRB1_24870184_vcf_bed.log                        modernFGF5_vcf_ancientcanids_bed.fam
ADRB1_24870184_vcf_bed.nosex                      modernFGF5_vcf_ancientcanids_bed.log
ADRB1_24870184_vcf_finalcoded.log                 modernFGF5_vcf_ancientcanids_bed.nosex
ADRB1_24870184_vcf_finalcoded.nosex               modernFGF5_vcf_ancientcanids_finalcoded.log
ADRB1_24870184_vcf_finalcoded.vcf                 modernFGF5_vcf_ancientcanids_finalcoded.nosex
ADRB1_24870184_vcf_plink.log                      modernFGF5_vcf_ancientcanids_finalcoded.vcf
ADRB1_24870184_vcf_plink.map                      modernFGF5_vcf_ancientcanids_plink.log
ADRB1_24870184_vcf_plink.nosex                    modernFGF5_vcf_ancientcanids_plink.map
ADRB1_24870184_vcf_plink.ped                      modernFGF5_vcf_ancientcanids_plink.nosex
ADRB1_24870184_vcf.recode.vcf                     modernFGF5_vcf_ancientcanids_plink.ped
CBD103_vcf_ancientcanids.recode.vcf               modernFGF5_vcf_ancientcanids.recode.vcf
FGF5_vcf_ancientcanids_bed.bed                    modern_vcf_ancientcanids.recode.vcf
FGF5_vcf_ancientcanids_bed.bim                    SGK3_vcf_ancientcanids.recode.vcf
FGF5_vcf_ancientcanids_bed.fam                    TYRP1_vcf_ancientcanids.recode.vcf

/scratch/ak308/Dholes:
00_alignment  scripts  slurmout

/scratch/ak308/Dholes/00_alignment:
publishedfastq

/scratch/ak308/Dholes/00_alignment/publishedfastq:
SRR8049189_1.fastq.gz

/scratch/ak308/Dholes/scripts:

/scratch/ak308/Dholes/slurmout:
[ak308@loginx2 ~]$ ls -l /scratch/ak/Bio310_Dog/Results/
ls: cannot access '/scratch/ak/Bio310_Dog/Results/': No such file or directory
[ak308@loginx2 ~]$ cd
[ak308@loginx2 ~]$ ls -l /scratch/ak/Bio310_Dog/Results/
ls: cannot access '/scratch/ak/Bio310_Dog/Results/': No such file or directory
[ak308@loginx2 ~]$ ls -l /scratch/ak308/Bio310_Dog/Results/
total 4289
-rw-r--r-- 1 ak308 lh106      34 Mar 25 17:19 ADRB124860187_vcf_ancientcanids_bed.bed
-rw-r--r-- 1 ak308 lh106      20 Mar 25 17:19 ADRB124860187_vcf_ancientcanids_bed.bim
-rw-r--r-- 1 ak308 lh106    2477 Mar 25 17:19 ADRB124860187_vcf_ancientcanids_bed.fam
-rw-r--r-- 1 ak308 lh106    1492 Mar 25 17:19 ADRB124860187_vcf_ancientcanids_bed.log
-rw-r--r-- 1 ak308 lh106    1361 Mar 25 17:19 ADRB124860187_vcf_ancientcanids_bed.nosex
-rw-r--r-- 1 ak308 lh106    1514 Mar 25 17:19 ADRB124860187_vcf_ancientcanids_finalcoded.log
-rw-r--r-- 1 ak308 lh106    1361 Mar 25 17:19 ADRB124860187_vcf_ancientcanids_finalcoded.nosex
-rw-r--r-- 1 ak308 lh106    1957 Mar 25 17:21 ADRB124860187_vcf_ancientcanids_finalcoded.vcf
-rw-r--r-- 1 ak308 lh106    1147 Mar 25 17:19 ADRB124860187_vcf_ancientcanids_plink.log
-rw-r--r-- 1 ak308 lh106      16 Mar 25 17:19 ADRB124860187_vcf_ancientcanids_plink.map
-rw-r--r-- 1 ak308 lh106    1361 Mar 25 17:19 ADRB124860187_vcf_ancientcanids_plink.nosex
-rw-r--r-- 1 ak308 lh106    2973 Mar 25 17:19 ADRB124860187_vcf_ancientcanids_plink.ped
-rw-r--r-- 1 ak308 lh106    2566 Mar 11  2026 ADRB124860187_vcf_ancientcanids.recode.vcf
-rw-r--r-- 1 ak308 lh106     428 Apr  4 20:46 ADRB1_24860187_vcf_bed.bed
-rw-r--r-- 1 ak308 lh106      20 Apr  4 20:46 ADRB1_24860187_vcf_bed.bim
-rw-r--r-- 1 ak308 lh106   46060 Apr  4 20:46 ADRB1_24860187_vcf_bed.fam
-rw-r--r-- 1 ak308 lh106    1378 Apr  4 20:46 ADRB1_24860187_vcf_bed.log
-rw-r--r-- 1 ak308 lh106   30787 Apr  4 20:46 ADRB1_24860187_vcf_bed.nosex
-rw-r--r-- 1 ak308 lh106    1427 Apr  4 20:46 ADRB1_24860187_vcf_finalcoded.log
-rw-r--r-- 1 ak308 lh106   30787 Apr  4 20:46 ADRB1_24860187_vcf_finalcoded.nosex
-rw-r--r-- 1 ak308 lh106   34529 Apr  4 20:47 ADRB1_24860187_vcf_finalcoded.vcf
-rw-r--r-- 1 ak308 lh106    1085 Apr  4 20:46 ADRB1_24860187_vcf_plink.log
-rw-r--r-- 1 ak308 lh106      16 Apr  4 20:46 ADRB1_24860187_vcf_plink.map
-rw-r--r-- 1 ak308 lh106   30787 Apr  4 20:46 ADRB1_24860187_vcf_plink.nosex
-rw-r--r-- 1 ak308 lh106   52848 Apr  4 20:46 ADRB1_24860187_vcf_plink.ped
-rw-r--r-- 1 ak308 lh106   97065 Apr  4 04:26 ADRB1_24860187_vcf.recode.vcf
-rw-r--r-- 1 ak308 lh106      34 Mar 25 17:42 ADRB124870184_vcf_ancientcanids_bed.bed
-rw-r--r-- 1 ak308 lh106      20 Mar 25 17:42 ADRB124870184_vcf_ancientcanids_bed.bim
-rw-r--r-- 1 ak308 lh106    2477 Mar 25 17:42 ADRB124870184_vcf_ancientcanids_bed.fam
-rw-r--r-- 1 ak308 lh106    1492 Mar 25 17:42 ADRB124870184_vcf_ancientcanids_bed.log
-rw-r--r-- 1 ak308 lh106    1361 Mar 25 17:42 ADRB124870184_vcf_ancientcanids_bed.nosex
-rw-r--r-- 1 ak308 lh106    1514 Mar 25 17:42 ADRB124870184_vcf_ancientcanids_finalcoded.log
-rw-r--r-- 1 ak308 lh106    1361 Mar 25 17:42 ADRB124870184_vcf_ancientcanids_finalcoded.nosex
-rw-r--r-- 1 ak308 lh106    1957 Mar 25 17:45 ADRB124870184_vcf_ancientcanids_finalcoded.vcf
-rw-r--r-- 1 ak308 lh106    1147 Mar 25 17:42 ADRB124870184_vcf_ancientcanids_plink.log
-rw-r--r-- 1 ak308 lh106      16 Mar 25 17:42 ADRB124870184_vcf_ancientcanids_plink.map
-rw-r--r-- 1 ak308 lh106    1361 Mar 25 17:42 ADRB124870184_vcf_ancientcanids_plink.nosex
-rw-r--r-- 1 ak308 lh106    2973 Mar 25 17:42 ADRB124870184_vcf_ancientcanids_plink.ped
-rw-r--r-- 1 ak308 lh106    2578 Mar 11  2026 ADRB124870184_vcf_ancientcanids.recode.vcf
-rw-r--r-- 1 ak308 lh106     428 Apr  4 20:43 ADRB1_24870184_vcf_bed.bed
-rw-r--r-- 1 ak308 lh106      20 Apr  4 20:43 ADRB1_24870184_vcf_bed.bim
-rw-r--r-- 1 ak308 lh106   46060 Apr  4 20:43 ADRB1_24870184_vcf_bed.fam
-rw-r--r-- 1 ak308 lh106    1378 Apr  4 20:43 ADRB1_24870184_vcf_bed.log
-rw-r--r-- 1 ak308 lh106   30787 Apr  4 20:43 ADRB1_24870184_vcf_bed.nosex
-rw-r--r-- 1 ak308 lh106    1427 Apr  4 20:43 ADRB1_24870184_vcf_finalcoded.log
-rw-r--r-- 1 ak308 lh106   30787 Apr  4 20:43 ADRB1_24870184_vcf_finalcoded.nosex
-rw-r--r-- 1 ak308 lh106   34529 Apr  4 20:48 ADRB1_24870184_vcf_finalcoded.vcf
-rw-r--r-- 1 ak308 lh106    1085 Apr  4 20:43 ADRB1_24870184_vcf_plink.log
-rw-r--r-- 1 ak308 lh106      16 Apr  4 20:43 ADRB1_24870184_vcf_plink.map
-rw-r--r-- 1 ak308 lh106   30787 Apr  4 20:43 ADRB1_24870184_vcf_plink.nosex
-rw-r--r-- 1 ak308 lh106   52848 Apr  4 20:43 ADRB1_24870184_vcf_plink.ped
-rw-r--r-- 1 ak308 lh106   96961 Apr  4 04:27 ADRB1_24870184_vcf.recode.vcf
-rw-r--r-- 1 ak308 lh106    1159 Mar 11  2026 CBD103_vcf_ancientcanids.recode.vcf
-rw-r--r-- 1 ak308 lh106      34 Mar 25 17:43 FGF5_vcf_ancientcanids_bed.bed
-rw-r--r-- 1 ak308 lh106      19 Mar 25 17:43 FGF5_vcf_ancientcanids_bed.bim
-rw-r--r-- 1 ak308 lh106    2477 Mar 25 17:43 FGF5_vcf_ancientcanids_bed.fam
-rw-r--r-- 1 ak308 lh106    1411 Mar 25 17:43 FGF5_vcf_ancientcanids_bed.log
-rw-r--r-- 1 ak308 lh106    1361 Mar 25 17:43 FGF5_vcf_ancientcanids_bed.nosex
-rw-r--r-- 1 ak308 lh106    1451 Mar 25 17:43 FGF5_vcf_ancientcanids_finalcoded.log
-rw-r--r-- 1 ak308 lh106    1361 Mar 25 17:43 FGF5_vcf_ancientcanids_finalcoded.nosex
-rw-r--r-- 1 ak308 lh106    1955 Mar 25 17:46 FGF5_vcf_ancientcanids_finalcoded.vcf
-rw-r--r-- 1 ak308 lh106    1102 Mar 25 17:43 FGF5_vcf_ancientcanids_plink.log
-rw-r--r-- 1 ak308 lh106      15 Mar 25 17:43 FGF5_vcf_ancientcanids_plink.map
-rw-r--r-- 1 ak308 lh106    1361 Mar 25 17:43 FGF5_vcf_ancientcanids_plink.nosex
-rw-r--r-- 1 ak308 lh106    2973 Mar 25 17:43 FGF5_vcf_ancientcanids_plink.ped
-rw-r--r-- 1 ak308 lh106    2637 Mar 11  2026 FGF5_vcf_ancientcanids.recode.vcf
-rw-r--r-- 1 ak308 lh106    1159 Mar 11  2026 IGF1_vcf_ancientcanids.recode.vcf
-rw-r--r-- 1 ak308 lh106 2614546 Feb 15  2026 KRT71_chr27.vcf
-rw-r--r-- 1 ak308 lh106    1159 Mar 11  2026 KRT71_vcf_ancientcanids.recode.vcf
-rw-r--r-- 1 ak308 lh106    1159 Mar 11  2026 MC1R_vcf_ancientcanids.recode.vcf
-rw-r--r-- 1 ak308 lh106     428 Mar 25 17:43 modernADRB1_24860187_vcf_ancientcanids_bed.bed
-rw-r--r-- 1 ak308 lh106      20 Mar 25 17:43 modernADRB1_24860187_vcf_ancientcanids_bed.bim
-rw-r--r-- 1 ak308 lh106   46060 Mar 25 17:43 modernADRB1_24860187_vcf_ancientcanids_bed.fam
-rw-r--r-- 1 ak308 lh106    1558 Mar 25 17:43 modernADRB1_24860187_vcf_ancientcanids_bed.log
-rw-r--r-- 1 ak308 lh106   30787 Mar 25 17:43 modernADRB1_24860187_vcf_ancientcanids_bed.nosex
-rw-r--r-- 1 ak308 lh106    1567 Mar 25 17:43 modernADRB1_24860187_vcf_ancientcanids_finalcoded.log
-rw-r--r-- 1 ak308 lh106   30787 Mar 25 17:43 modernADRB1_24860187_vcf_ancientcanids_finalcoded.nosex
-rw-r--r-- 1 ak308 lh106   34529 Mar 25 17:46 modernADRB1_24860187_vcf_ancientcanids_finalcoded.vcf
-rw-r--r-- 1 ak308 lh106    1185 Mar 25 17:43 modernADRB1_24860187_vcf_ancientcanids_plink.log
-rw-r--r-- 1 ak308 lh106      16 Mar 25 17:43 modernADRB1_24860187_vcf_ancientcanids_plink.map
-rw-r--r-- 1 ak308 lh106   30787 Mar 25 17:43 modernADRB1_24860187_vcf_ancientcanids_plink.nosex
-rw-r--r-- 1 ak308 lh106   52848 Mar 25 17:43 modernADRB1_24860187_vcf_ancientcanids_plink.ped
-rw-r--r-- 1 ak308 lh106   97065 Mar 12  2026 modernADRB1_24860187_vcf_ancientcanids.recode.vcf
-rw-r--r-- 1 ak308 lh106     428 Mar 25 17:43 modernADRB1_24870184_vcf_ancientcanids_bed.bed
-rw-r--r-- 1 ak308 lh106      20 Mar 25 17:43 modernADRB1_24870184_vcf_ancientcanids_bed.bim
-rw-r--r-- 1 ak308 lh106   46060 Mar 25 17:43 modernADRB1_24870184_vcf_ancientcanids_bed.fam
-rw-r--r-- 1 ak308 lh106    1558 Mar 25 17:43 modernADRB1_24870184_vcf_ancientcanids_bed.log
-rw-r--r-- 1 ak308 lh106   30787 Mar 25 17:43 modernADRB1_24870184_vcf_ancientcanids_bed.nosex
-rw-r--r-- 1 ak308 lh106    1567 Mar 25 17:43 modernADRB1_24870184_vcf_ancientcanids_finalcoded.log
-rw-r--r-- 1 ak308 lh106   30787 Mar 25 17:43 modernADRB1_24870184_vcf_ancientcanids_finalcoded.nosex
-rw-r--r-- 1 ak308 lh106   34529 Mar 25 17:46 modernADRB1_24870184_vcf_ancientcanids_finalcoded.vcf
-rw-r--r-- 1 ak308 lh106    1185 Mar 25 17:43 modernADRB1_24870184_vcf_ancientcanids_plink.log
-rw-r--r-- 1 ak308 lh106      16 Mar 25 17:43 modernADRB1_24870184_vcf_ancientcanids_plink.map
-rw-r--r-- 1 ak308 lh106   30787 Mar 25 17:43 modernADRB1_24870184_vcf_ancientcanids_plink.nosex
-rw-r--r-- 1 ak308 lh106   52848 Mar 25 17:43 modernADRB1_24870184_vcf_ancientcanids_plink.ped
-rw-r--r-- 1 ak308 lh106   96961 Mar 12  2026 modernADRB1_24870184_vcf_ancientcanids.recode.vcf
-rw-r--r-- 1 ak308 lh106     428 Mar 25 17:45 modernFGF5_vcf_ancientcanids_bed.bed
-rw-r--r-- 1 ak308 lh106      19 Mar 25 17:45 modernFGF5_vcf_ancientcanids_bed.bim
-rw-r--r-- 1 ak308 lh106   46060 Mar 25 17:45 modernFGF5_vcf_ancientcanids_bed.fam
-rw-r--r-- 1 ak308 lh106    1468 Mar 25 17:45 modernFGF5_vcf_ancientcanids_bed.log
-rw-r--r-- 1 ak308 lh106   30787 Mar 25 17:45 modernFGF5_vcf_ancientcanids_bed.nosex
-rw-r--r-- 1 ak308 lh106    1497 Mar 25 17:45 modernFGF5_vcf_ancientcanids_finalcoded.log
-rw-r--r-- 1 ak308 lh106   30787 Mar 25 17:45 modernFGF5_vcf_ancientcanids_finalcoded.nosex
-rw-r--r-- 1 ak308 lh106   34527 Mar 25 17:47 modernFGF5_vcf_ancientcanids_finalcoded.vcf
-rw-r--r-- 1 ak308 lh106    1135 Mar 25 17:45 modernFGF5_vcf_ancientcanids_plink.log
-rw-r--r-- 1 ak308 lh106      15 Mar 25 17:45 modernFGF5_vcf_ancientcanids_plink.map
-rw-r--r-- 1 ak308 lh106   30787 Mar 25 17:45 modernFGF5_vcf_ancientcanids_plink.nosex
-rw-r--r-- 1 ak308 lh106   52848 Mar 25 17:45 modernFGF5_vcf_ancientcanids_plink.ped
-rw-r--r-- 1 ak308 lh106   95717 Mar 12  2026 modernFGF5_vcf_ancientcanids.recode.vcf
-rw-r--r-- 1 ak308 lh106   45761 Mar 11  2026 modern_vcf_ancientcanids.recode.vcf
-rw-r--r-- 1 ak308 lh106    1159 Mar 11  2026 SGK3_vcf_ancientcanids.recode.vcf
-rw-r--r-- 1 ak308 lh106    1159 Mar 11  2026 TYRP1_vcf_ancientcanids.recode.vcf
[ak308@loginx2 ~]$ cd
[ak308@loginx2 ~]$ ls
Bio310_Dog  Dholes  Software
[ak308@loginx2 ~]$ cd /scratch/ak308
[ak308@loginx2 ak308]$ ls
Bio310_Dog  Dholes
[ak308@loginx2 ak308]$ ls -R Dholes
Dholes:
00_alignment  scripts  slurmout

Dholes/00_alignment:
publishedfastq

Dholes/00_alignment/publishedfastq:
SRR8049189_1.fastq.gz

Dholes/scripts:

Dholes/slurmout:
[ak308@loginx2 ak308]$ 
