#!usr/bin/env bash

#script to trim fastqs w trimmomatic

trimmomatic PE \
~/data/untrimmed_fastq/SRR2589044_1.fastq.gz ~/data/untrimmed_fastq/SRR2589044_2.fastq.gz \
~/data/trimmed_fastq/SRR2589044_1.trim.fastq.gz ~/data/untrimmed_fastq/SRR2589044_1.untrim.fastq.gz \
~/data/trimmed_fastq/SRR2588044_2.trim.fastq.gz ~/data/untrimmed_fastq/SRR2589044_2.untrim.fastq.gz \
SLIDINGWINDOW:4:20 #\
#ILLUMINACLIP:~/.miniconda3/pkgs/trimmomatic-0.38-0/share/trimmomatic-0.38-0/adapters/NexteraPE-PE.fa
