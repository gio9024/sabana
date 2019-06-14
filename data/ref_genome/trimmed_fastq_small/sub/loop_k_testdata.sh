#!/usr/bin/env bash
#try different values of k for abyss assembly with test data

for k in `seq 15 3 45`; do
 abyss-pe k=$k name=63$k in='SRR2584863*fastq';
done
abyss-pe k=$k name=66$k in='SRR2584866*fastq';
done
abyss-pe k=$k name=44$k in='SRR2589044*fastq';
done
