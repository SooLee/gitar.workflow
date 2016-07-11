#!/bin/bash
bowtie_index_tarball=$1
fastq1=$2
fastq2=$3
outdir=$4
outprefix='out'
mkdir -p $outdir

tar -xzf $bowtie_index_tarball
bowtie_index=`ls -1 *bt2 | head -1 | sed 's/.1.bt2//g'`
#bowtie_index=/resources/hg19

echo $bowtie_index


bowtie2 -p 8 -x $bowtie_index -1 $fastq1 -2 $fastq2 -S $outdir/$outprefix.sam
samtools view -bS $outdir/$outprefix.sam > $outdir/$outprefix.bam
#samtools sort -m 5000000000 -o $outdir/$outprefix.sort.bam -T $outdir/$outprefix.tmp.sort.bam $outdir/$outprefix.bam
#samtools sort -m 5000000000 -n -o $outdir/$outprefix.namesort.bam -T $outdir/$outprefix.tmp.namesort.bam $outdir/$outprefix.sort.bam
samtools sort -m 5000000000 -n -o $outdir/$outprefix.namesort.bam -T $outdir/$outprefix.tmp.namesort.bam $outdir/$outprefix.bam
samtools fixmate $outdir/$outprefix.namesort.bam $outdir/$outprefix.fixmate_namesort.bam
samtools sort -m 5000000000 -o $outdir/$outprefix.fixmate_sort.bam -T $outdir/$outprefix.tmp.fixmate_sort.bam $outdir/$outprefix.fixmate_namesort.bam
samtools rmdup $outdir/$outprefix.fixmate_sort.bam $outdir/$outprefix\_noDup.sort.bam
samtools view -h -f 0x40 $outdir/$outprefix\_noDup.sort.bam > $outdir/$outprefix\_pair1.bam
samtools view -h -f 0x80 $outdir/$outprefix\_noDup.sort.bam > $outdir/$outprefix\_pair2.bam
