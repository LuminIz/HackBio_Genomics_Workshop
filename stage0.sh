#!/usr/bin/bash



# Simple Bash script

# Write a simple Bash program where your first name and last name are assigned to different variables,  and the script prints out your full name
first="Full"
last="Name"
echo $first $last
# Write a version where the strings are printed on the same line and a version where the strings are printed on different lines.
f1 () { echo $first; echo $last; }
f1



# Biocomputing Task 1: Bash Story 1

# Create a new folder titled your name
mkdir name
# Create another new directory titled biocomputing and change to that directory with one line of command
mkdir biocomputing && cd biocomputing
# Download these 3 files:
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
# Move the .fna file to the folder titled your name directly. (Do this with one command
mv wildtype.fna ../name/
# Delete one of the gbk files
rm wildtype.gbk.1
# Confirm if the .fna file is mutant or wild type
cd ../name/
grep 'tatatata' wildtype.fna
# Print all the lines that show it is a mutant into a new file
grep 'tatatata' wildtype.fna > mutant.txt
# Clear your terminal space and print all the commands you have used today.
clear && history
# List the files in the two folders
ls && ls ../biocomputing/
# Exit the terminal
exit



#Biocomputing Task 2: Bash Story 2

# Use the figlet command to draw a graphical representation of your name.
sudo apt-get install figlet
figlet "Full Name"
# In your home directory, create a folder called compare.
mkdir compare && cd compare
# Download file into the compare directory
wget https://www.bioinformatics.babraham.ac.uk/training/Introduction%20to%20Unix/unix_intro_data.tar.gz
# Unzip using gunzip command
gunzip unix_intro_data.tar.gz
# Then, untar the .tar file with tar command
tar -xf unix_intro_data.tar
# Get into seqmonk_genomes/Saccharomyces cerevisiae/EF4 and identify the rRNAs present in Mito.dat.
cd seqmonk_genomes/'Saccharomyces cerevisiae'/EF4/
grep 'rRNA' Mito.dat
# Using cp copy Mito.dat into the compare directory
cp Mito.dat ../../../
# Use nano to effect (specified) edits, rename file
nano Mito.dat
mv Mito.dat Mitochondrion.txt
# cd into FastQ_Data directory.
cd FastQ_Data
# Calculate the total number of lines in lane8_DD_P4_TTAGGC_L008_R1.fastq.gz
gzip -cd lane8_DD_P4_TTAGGC_L008_R1.fastq.gz | wc -l
# Print the total number of lines in all fastq.gz files and save it as a new file.
gzip -cd *fastq.gz | wc -l > fastqtotal2.txt



#Compile Codes into .sh File
cd
touch stage0.sh
which bash
nano stage0.sh
cat stage0.sh




