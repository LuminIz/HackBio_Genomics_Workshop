#!/usr/bin/bash


# Download reference sequence
wget https://raw.githubusercontent.com/josoga2/yt-dataset/main/dataset/references/reference.fasta

# Index reference sequence
bowtie2-build reference.fasta reference.btindex

# Download raw dataset
wget https://github.com/josoga2/yt-dataset/blob/main/dataset/raw_reads/ACBarrie_R1.fastq.gz?raw=true -O ACBarrie_R1.fastq.gz
wget https://github.com/josoga2/yt-dataset/blob/main/dataset/raw_reads/ACBarrie_R2.fastq.gz?raw=true -O ACBarrie_R2.fastq.gz

# Convert raw dataset to FASTA format
seqtk seq -a ACBarrie_R2.fastq.gz > ACBarrie_R2.fasta
seqtk seq -a ACBarrie_R1.fastq.gz > ACBarrie_R1.fasta

# Map with bowtie 2 (generate a SAM file)
bowtie2 -x reference.btindex -f -U ACBarrie_R1.fasta -S ACBarrie_R1.sam
bowtie2 -x reference.btindex -f -U ACBarrie_R2.fasta -S ACBarrie_R2.sam
# -x : specifies the indexed reference
# -f : dataset in FASTA format
# -U : unpaired reads
# -S : means output should be in SAM format

# Continue further processing with samtools (convert .sam to .bam, sort. index etc)

tutorial: https://www.protocols.io/view/week-6-mapping-with-bowtie2-kqdg3qyev25z/v2
