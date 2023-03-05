#Iterate through directories and show files

declare -a my_dirs=("0.0" "0.2" "0.4" "0.6") #Iterates through this array of arbitrary elements, used as folder names

for i in ${my_dirs[@]};do
    mkdir -p $i # creates the diretory if not exists
    cd $i
    for((j=1;j<=3;j++));do # creates and goes through 3 folders
        mkdir -p $j
        cd $j
        cd storage
        pwd
        ls data.minim_*_9 # shows the available files, this follows a certain format from my simulations
        cd ..
        cd ..
    done
    cd ..
done
