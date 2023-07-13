# first step

#!/bin/sh
#$ -cwd
#$ -N Quality_Control
#$ -l h_vmem=32G

# Initialise the environment modules
. /etc/profile.d/modules.sh

module load igmm/apps/fastx/0.0.13
module load igmm/apps/cutadapt/1.16

fastx_trimmer -f 15 -i ../sequence/Hiper_Fly1/230628_A00291_0488_BHHK2TDRX3_2_27390GG0002L01_1.fastq -o ../sequence/Hiper_Fly1/1_1.fastq
fastx_collapser -i ../sequence/Hiper_Fly1/1_1.fastq -o ../sequence/Hiper_Fly1/1_2.fastq
cutadapt -q 20 -i ../sequence/Hiper_Fly1/1_2.fastq -o ../sequence/controlled/Hiper_Fly_1.fastq

fastx_trimmer -f 15 -i ../sequence/Hiper_Fly1/230628_A00291_0488_BHHK2TDRX3_2_27390GG0002L01_2.fastq -o ../sequence/Hiper_Fly1/2_1.fastq
fastx_collapser -i ../sequence/Hiper_Fly1/2_1.fastq -o ../sequence/Hiper_Fly1/2_2.fastq
cutadapt -q 20 -i ../sequence/Hiper_Fly1/2_2.fastq -o ../sequence/controlled/Hiper_Fly_2.fastq

fastx_trimmer -f 15 -i ../sequence/Just_Fly1/230628_A00291_0488_BHHK2TDRX3_1_27390GG0001L01_1.fastq  -o ../sequence/Just_Fly1/1_1.fastq
fastx_collapser -i ../sequence/Just_Fly1/1_1.fastq -o ../sequence/Just_Fly1/1_2.fastq
cutadapt -q 20 -i ../sequence/Just_Fly1/1_2.fastq -o ../sequence/controlled/Just_Fly_1.fastq

fastx_trimmer -f 15 -i ../sequence/Just_Fly1/230628_A00291_0488_BHHK2TDRX3_1_27390GG0001L01_2.fastq -o ../sequence/Just_Fly1/2_1.fastq
fastx_collapser -i ../sequence/Just_Fly1/2_1.fastq -o ../sequence/Just_Fly1/2_2.fastq
cutadapt -q 20 -i ../sequence/Just_Fly1/2_2.fastq -o ../sequence/controlled/Just_Fly_2.fastq
