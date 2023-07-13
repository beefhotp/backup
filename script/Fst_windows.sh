#!/bin/bash

#$ -N Fst_windows
#$ -cwd
#$ -e Fst_windows.e


# Initialise the environment modules
. /etc/profile.d/modules.sh

module load roslin/perl/5.28.0



perl ../popoolation2_1201/fst-sliding.pl --input ../map_allele_freq/p1_p2.sync --output ../map_allele_freq/p1_p2_w500.fst --min-count 6 --min-coverage 50 --max-coverage 200 --min-covered-fraction 1 --window-size 500 --step-size 500 --pool-size 500
