#!/bin/bash
# the command below calls the LAMMPS application and takes an input script

command="lmp_mpi -i in.file"

# P is the number of cores to be tested (each n times)
num_cores=(48 24 12 8 6 4 2)

for P in "${num_cores[@]}";do
  for i in $(seq 3);do
		START=$(date +%s.%N)
		# This code chunk calls the LAMMPS app and writes the information to the log
    mpirun -np $P $command > skala_test.log 2>&1
    END=$(date +%s.%N)
    RUNTIME=$(echo "$END - $START" | bc -l)
    printf "%3d %5.2f\n" $P $RUNTIME
  done
done

echo "End Time:"
date
