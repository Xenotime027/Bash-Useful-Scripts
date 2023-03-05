#!/bin/bash
# automatically sends the submission (SLURM submit script)

declare -a my_dirs=("v" "i" "n" "c" "e") # creates an array of directories where the submit script is located

for i in ${my_dirs[@]};do
    #mkdir -p $i # we assume that the directories and the submit scripts already exist 
    cd $i
    sbatch submit.sh #submits the slurm submit script
    pwd
    cd ..
done
