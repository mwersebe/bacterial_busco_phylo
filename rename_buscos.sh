#!/bin/bash
#script to reheader nuclotide busco fasta files: 

#enter the single copy working directory:
cd ~/unix_tutorial/SAMPLE_output/run_bacteria_odb10/busco_sequences/single_copy_busco_sequences
#move the amino acid translations to a separate folder out of the way

mkdir Amino_acids

mv *.faa Amino_acids

#Back-up the *.fna files in a directory 

mkdir Nuc_fasta

cp *.fna Nuc_fasta

#Rename the .fna files to include the sample name

ls *.fna|awk -F "." '{print$1}'|while read gene
do 
mv $gene.fna SAMPLE.$gene.fna
done

#sanity check:

ls *.fna |head
