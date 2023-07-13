working steps:
1. script.sh:
	fastqc
	indexing reference
	map reads to reference (bwa mem for short reads and bwa aln for long reads)
	remove ambiguously mapped reads (quality 20)
	combine into mpileup file
2. synchronized.sh
	convert file format (.sync)
	calculate the allele frequency
	Fst
3. IGV.sh
	convert file format (.igv) (visualisation)

TO DO:
	Tajima_s_Pi.sh: measures the average pairwise nucleotide diversity within a population
Tajima's Pi measures overall genetic diversity within a population, 
while Tajima's D measures departures from neutral evolution. 
Both statistics provide valuable insights into the genetic dynamics and evolutionary processes of populations, 
but they focus on different aspects of population genetic variation.

	significance estimate: Wilcxon test? 
