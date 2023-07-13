#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -N Tajima
#$ -cwd
#$ -l h_vmem=16G
#$ -e Tajima.e


# Initialise the environment modules
. /etc/profile.d/modules.sh

module load roslin/perl/5.28.0

perl ~//Variance-sliding.pl
