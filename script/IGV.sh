# fourth step

#!/bin/bash

#$ -N make_IGV_file
#$ -cwd
#$ -e IGV.e
#$ -l h_vmem=8G

# Initialise the environment modules
. /etc/profile.d/modules.sh

module load roslin/perl/5.28.0
module load roslin/samtools/1.9
#module load roslin/java/18.0.2 

samtools index ../map_pop/pop1_sorted.bam
samtools index ../map_pop/pop2_sorted.bam

# mkdir ../IGV_dir
#convert to IGV
perl ../popoolation2_1201/export/pwc2igv.pl --input ../map_allele_freq/p1_p2.fst --output ../IGV_dir/p1_p2.igv

#output_file="p1_p2.igv"
#igv_save_path="../IGV_dir/"

#genome_file="../demo-data/2R.chr"
#bam_file1="../map_pop/pop1_sorted.bam"
#bam_file2="../map_pop/pop2_sorted.bam"
#fst_file="../map_allele_freq/p1_p2.fst"

#echo "new" > "${output_file}"
#echo "genome ${genome_file}" >> "${output_file}"
#echo "load ${bam_file1}" >> "${output_file}"
#echo "load ${bam_file2}" >> "${output_file}"
#echo "load ${fst_file}" >> "${output_file}"
#echo "snapshotDirectory ${igv_save_path}" >> "${output_file}"
#echo "snapshot" >> "${output_file}"
#echo "exit" >> "${output_file}"

# 运行IGV命令行
#. ../IGV_Linux_2.16.1/igv.sh  -Xmx8g -b "${output_file}"

