#!/bin/bash
#$ -N gunzip
#$ -l h_vmem=32G
#$ -e gunzip.e
#$ -o gunzip.o

cd ../sequence/Hiper_Fly1/
gunzip *.gz

cd ../Just_Fly1/
gunzip *.gz
