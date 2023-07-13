# fifth step

#!/bin/bash

#$ -N Fisher_Exact_Test
#$ -cwd
#$ -l h_vmem=8G
#$ -e Fisher.e
#$ -o Fisher.o

# Initialise the environment modules
. /etc/profile.d/modules.sh

module load roslin/perl/5.28.0

#cpan App::cpanminus $ cpanm Text::NSP::Measures::2D::Fisher::twotailed
#perl ../popoolation2_1201/fisher-test.pl --input ../map_allele_freq/p1_p2.sync --output ../map_allele_freq/p1_p2.fet --min-count 6 --min-coverage 50 --max-coverage 200 --suppress-noninformative
#perl ../popoolation2_1201/export/pwc2igv.pl --input ../map_allele_freq/p1_p2.fet --output ../IGV_dir/p1_p2_fet.igv

# convert the result of Fisher's exact test results into IGV

perl ../popoolation2_1201/export/pwc2igv.pl --input ../map_allele_freq/p1_p2.fet --output ../map_allele_freq/p1_p2_fet.igv

