#!/bin/sh

#SBATCH --nodes=2
#SBATCH --ntasks-per-node=20
#SBATCH -p treinamento_gpu
#SBATCH -J nome_do_job
#SBATCH --exclusive

#source /scratch/app/modulos/intel-psxe-2016.2.062.sh
#module load openmpi/icc/2.0.4.2
module load R/3.5.2_openmpi_2.0_gnu
#module load R/3.3.1_intel

# Suprime aviso sobre uso de fork()
export OMPI_MCA_mpi_warn_on_fork=0
ulimit -s 10240

EXEC=${1}

$EXEC
