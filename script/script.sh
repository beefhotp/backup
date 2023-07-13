# first step

#!/bin/sh
#$ -cwd
#$ -N map_reads
#$ -l h_vmem=64G


# Initialise the environment modules
. /etc/profile.d/modules.sh

module load roslin/bwa/2.1.0
module load roslin/samtools/1.10
module load roslin/fastqc/0.11.7 

# quality control
# fastqc ../demo-data/pop1.fastq ../demo-data/pop2.fastq

# indexing the reference file 
bwa index ../demo-data/2R.chr

# map reads to reference
mkdir ../map_pop
bwa aln ../demo-data/2R.chr ../demo-data/pop1.fastq > ../map_pop/pop1.sai
bwa aln ../demo-data/2R.chr ../demo-data/pop2.fastq > ../map_pop/pop2.sai
# bwa mem 

bwa samse ../demo-data/2R.chr ../map_pop/pop1.sai ../demo-data/pop1.fastq > ../map_pop/pop1.sam
bwa samse ../demo-data/2R.chr ../map_pop/pop2.sai ../demo-data/pop2.fastq > ../map_pop/pop2.sam

#remove ambiguously mapped reads
samtools view -q 20 -bS ../map_pop/pop1.sam | samtools sort -o ../map_pop/pop1_sorted.bam
samtools view -q 20 -bS ../map_pop/pop2.sam | samtools sort -o ../map_pop/pop2_sorted.bam

#creat mpileup file
samtools mpileup -B ../map_pop/pop1_sorted.bam ../map_pop/pop2_sorted.bam > ../map_pop/p1_p2.mpileup

#$ -e mapping.e
