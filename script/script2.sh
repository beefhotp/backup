#!/bin/bash

#$ -N map_together
#$ -cwd
#$ -l h_vmem=64G
#$ -e mapped.e

. /etc/profile.d/modules.sh

module load roslin/bwa/2.1.0

bwa sampe ../ref/ref.fasta ../map/SRR1.sai ../map/SRR2.sai ../sequence/SRR1_trimmed.fastq ../sequence/SRR2_trimmed.fastq > ../map/SRR_maped.sam
