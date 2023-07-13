# third step

#!/bin/bash

#$ -N Work_with_Popoolation
#$ -cwd
#$ -e synchronized.e


# Initialise the environment modules
. /etc/profile.d/modules.sh

module load roslin/perl/5.28.0 

# mkdir ../map_allele_freq

# create synchronized file
perl ../popoolation2_1201/mpileup2sync.pl --fastq-type sanger --min-qual 20 --input ../map_pop/p1_p2.mpileup --output ../map_allele_freq/p1_p2.sync

#calculate allele frequency
perl ../popoolation2_1201/snp-frequency-diff.pl --input-prefix ../map_allele_freq/p1_p2.sync --output ../map_allele_freq/p1_p2 --min-count 6 --min-coverage 50 --max-coverage 200

#calculate Fst
perl ../popoolation2_1201/fst-sliding.pl --input ../map_allele_freq/p1_p2.sync --output ../map_allele_freq/p1_p2.fst --suppress-noninformative --min-count 6 --min-coverage 50 --max-coverage 200 --min-covered-fraction 1 --window-size 1 --step-size 1 --pool-size 500

