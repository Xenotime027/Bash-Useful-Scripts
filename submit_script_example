#!/bin/bash
#SBATCH -J name             # job name
#SBATCH --mail-type=NONE    # email settings
#SBATCH -e %x.err.%j        # error file
#SBATCH -o %x.out.%j        # output file
#SBATCH --mem-per-cpu=2000  # memory allocation
#SBATCH -t 24:00:00         # maximum duration
#SBATCH -p deflt*           # partition
#SBATCH -A project12345     # project id
#SBATCH -n 96               # number of processors
#SBATCH --no-requeue        # avoids requeueing
#SBATCH -C avx512           # default
# #SBATCH --dependency=afterany:12421299

# print information
echo "Start Time:"
date
echo "This is Job $SLURM_JOB_ID : $SLURM_JOB_NAME on Project Number $SLURM_JOB_ACCOUNT"
echo "Nodes: $SLURM_JOB_NUM_NODES"

# load modules
module purge                    # always perform module purge before sending any jobs to remove any dependencies with the previous jobs
ml intel/2022.1 intelmpi/2022.1 # example of using a message passing interface from Intel to parallelise LAMMPS jobs

# run the simulation, with a LAMMPS input script, change the username
$username = username
srun /home/$username/static/lmp_intel_cpu_intelmpi -i in.script

# compress files
#pigz -f lammpstrj.*
#pigz -f data.*

echo "End Time:"
date
~                
