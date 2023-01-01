#! /bin/sh

if [ $# -lt 4 ]
then
    echo "USAGE: qsub -A <projectname> -q <job_queue> -l select=<num_nodes>:system=polaris -l walltime=<walltime> -l filesystems=<filesystem> <job_script> <num_nodes> <rpn> <outname> <pynamic_driver>"
    exit -1
fi

NODES_RUN=$1
RPN=$2
OUTNAME=$3
PYN_DRI=$4

#cmd_str="/lus/grand/projects/datascience/kaushikv/copper-test/pyna-big/pynamic/pynamic-pyMPI-2.6a1/pynamic-pyMPI"

#pyMPI - a vanilla pyMPI build
#pyMPI pynamic_driver.py 

#pynamic-pyMPI - pyMPI with the generated .so's linked in
#pynamic-pyMPI pynamic_driver.py

#pynamic-sdb-pyMPI - pyMPI with the generated libraries statically linked in
#pynamic-sdb-pyMPI pynamic_driver.py



RANKS=$((${NODES_RUN}*${RPN}))

#LD_LIBRARY_PATH required for polaris 

export LD_LIBRARY_PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/21.9/comm_libs/nvshmeme/lib:/opt/nvidia/hpc_sdk/Linux_x86_64/21.9/comm_libs/nccl/lib:/opt/nvidia/hpc_sdk/Linux_x86_64/21.9/math_libs/lib64:/opt/nvidia/hpc_sdk/Linux_x86_64/21.9/compilers/lib:/opt/nvidia/hpc_sdk/Linux_x86_64/21.9/compilersextras/qd/lib:/opt/nvidia/hpc_sdk/Linux_x86_64/21.9/cudaextras/CUPTI/lib64:/opt/nvidia/hpc_sdk/Linux_x86_64/21.9/cuda/lib64:/opt/cray/pe/papi/6.0.0.14/lib64:/opt/cray/libfabric/1.11.0.4.125/lib64:/lus/grand/projects/datascience/kaushikv/copper-test/pynamic/pynamic-pyMPI-2.6a



echo -n "pynamic-sdb-pyMPI ${NODES_RUN}, ${RPN}, " >> $PBS_O_WORKDIR/${OUTNAME}

/usr/bin/time -f "%e" /opt/cray/pe/pals/1.1.7/bin/mpiexec -n ${RANKS} --ppn ${RPN} -d 1 --cpu-bind depth /lus/grand/projects/datascience/kaushikv/copper-test/pyna-big/pynamic/pynamic-pyMPI-2.6a1/pynamic-sdb-pyMPI $PYN_DRI  2>> $PBS_O_WORKDIR/${OUTNAME}

echo -n "pynamic-pyMPI  ${NODES_RUN}, ${RPN}, " >> $PBS_O_WORKDIR/${OUTNAME}

/usr/bin/time -f "%e" /opt/cray/pe/pals/1.1.7/bin/mpiexec -n ${RANKS} --ppn ${RPN} -d 1 --cpu-bind depth /lus/grand/projects/datascience/kaushikv/copper-test/pyna-big/pynamic/pynamic-pyMPI-2.6a1/pynamic-pyMPI $PYN_DRI  2>> $PBS_O_WORKDIR/${OUTNAME}

echo -n "pyMPI ${NODES_RUN}, ${RPN}, " >> $PBS_O_WORKDIR/${OUTNAME}

/usr/bin/time -f "%e" /opt/cray/pe/pals/1.1.7/bin/mpiexec -n ${RANKS} --ppn ${RPN} -d 1 --cpu-bind depth /lus/grand/projects/datascience/kaushikv/copper-test/pyna-big/pynamic/pynamic-pyMPI-2.6a1/pyMPI $PYN_DRI  2>> $PBS_O_WORKDIR/${OUTNAME}


# Job submission

#qsub -I -A datascience -q debug -l select=2:system=polaris -l walltime=00:10:00 -l filesystems=grand  /lus/grand/projects/datascience/kaushikv/copper-test/pynamic/pynamic-polaris-job.sh

# Simple interactive run command 

#/usr/bin/time -f "%e" /opt/cray/pe/pals/1.1.7/bin/mpiexec -n 4 --ppn 2 -d 1 --cpu-bind depth  /lus/grand/projects/datascience/kaushikv/copper-test/pynamic/pynamic-pyMPI-2.6a1/pynamic-pyMPI /lus/grand/projects/datascience/kaushikv/copper-test/pynamic/pynamic-pyMPI-2.6a1/pynamic_driver.py 2>> $PBS_O_WORKDIR/job_output.out

# For Non Hyperthreading 1 and 32 threads

#/usr/bin/time -f "%e" /opt/cray/pe/pals/1.1.7/bin/mpiexec -n ${RANKS} --ppn ${RPN} -d 1 --cpu-bind depth $CMD_STR  $PYN_DRI  2>> $PBS_O_WORKDIR/${OUTNAME}

#For Hyperthreading for 64 threads

#/usr/bin/time -f "%e" /opt/cray/pe/pals/1.1.7/bin/mpiexec -n ${RANKS} --ppn ${RPN} -d 2 --cpu-bind depth $CMD_STR  $PYN_DRI  2>> $PBS_O_WORKDIR/${OUTNAME}


