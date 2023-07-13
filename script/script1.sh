#!/bin/bash

#$ -cwd
#$ -N mapped reads trimming
#$ -l h_vmem=16G

#initiate the environment module
. /etc/profile.d/modules.sh

module load roslin/samtools/1.9

#remove ambiguously mapped reads
samtools view  -bS ../map/SRR1.sam | samtools sort - ../map/SSR1
samtools view  -bS ../map/SRR2.sam | samtools sort - ../map/SSR2

#$ -e remove.e
