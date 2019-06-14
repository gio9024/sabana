#/usr/bin/env bash 
#take sam from alignment and call variants

#convert sam to bam
samtools view -S -b ~/results/alignment/SRR2584863.sam | \# > ~/results/alignment/SRR2584863.bam
samtools sort -o ~/results/alignment/SRR2584863.sorted.bam

samtools index ~results/alignment/SRR2584863.sorted.bam #need index for tview
#call variants
bcftools mpileup -O b -o SRR2584863.bcf \
-f ~/data/ref_genome/GCA_000017985.1_ASM1798v1_genomic.fna \
~results/alignment/SRR2584863.sorted.bam

bcftools call --ploidy 1 -m -v -o ~/results/alignment/SRR2584863_variants.bcf SRR2584863.bcf
