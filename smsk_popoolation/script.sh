#!/bin/bash
#$ -N Snakemake_test
#$ -cwd
#$ -pe sharedmem 2
#$ -l h_vmem=16G
#$ -o Snakemake_test.o


# Initialise the environment modules
. /etc/profile.d/modules.sh

module load anaconda
module load roslin/mamba/1.0
conda init /exports/cmvm/eddie/eb/groups/HighlanderLab/anaconda/envs/HLab_tsinfer

export DRMAA_LIBRARY_PATH=/exports/applications/gridengine/ge-8.6.5/lib/lx-amd64/libdrmaa.so 

snakemake -j 2 --use-conda --drmaa " -P roslin_HighlanderLab -l h_vmem=16G " --jobscript jobscript.sh -s Snakefile

