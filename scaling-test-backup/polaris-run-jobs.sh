#!/bin/sh

filesystem="grand"
walltime="00:30:00"
project="datascience"
sleeptime="1s" # To adjust with the number of jobs per queue policy
outname="polaris_pynamic_results.csv"
job_script="/lus/grand/projects/datascience/kaushikv/copper-test/pyna-big/pynamic/scaling-test/polaris-job-script.sh" #set executable permissions to this script
pynamic_driver="/lus/grand/projects/datascience/kaushikv/copper-test/pyna-big/pynamic/pynamic-pyMPI-2.6a1/pynamic_driver.py" # replace with pynamic_driver.py 




# /lus/grand/projects/datascience/kaushikv/copper-test/pynamic/pynamic-pyMPI-2.6a1/pynamic_driver.py
# /lus/grand/projects/datascience/kaushikv/copper-test/pynamic/pynamic-pyMPI-2.6a1/pynamic_driver_mpi4py.py?

for num_nodes in 1 #1 2 4 8 16 32 64 128 256
do
    for rpn in  1 # 1 32 64
    do
        if [[ $num_nodes -lt 3 && $num_nodes -gt 0 ]]; 
        then
            job_queue="debug"
        elif [[ $num_nodes -lt 11 && $num_nodes -gt 2 ]];  
        then
            job_queue="debug-scaling"
        elif [[ $num_nodes -lt 513 && $num_nodes -gt 10 ]];  
        then
            job_queue="prod"
        fi
        #echo "qsub -A datascience -q $job_queue -l select=$num_nodes:system=polaris -l walltime=$walltime -l filesystems=$filesystem -- $job_script $num_nodes $rpn $outname $pynamic_driver"
        qsub -A datascience -q $job_queue -l select=$num_nodes:system=polaris -l walltime=$walltime -l filesystems=$filesystem -- $job_script $num_nodes $rpn $outname $pynamic_driver
        
        sleep $sleeptime

    done
done

#qsub -A datascience -q debug -l select=2:system=polaris -l walltime=00:05:00 -l filesystems=grand -- /lus/grand/projects/datascience/kaushikv/copper-test/pynamic/polaris-job-script.sh 2 32 polaris_pynamic_results.csv /lus/grand/projects/datascience/kaushikv/copper-test/pynamic/pynamic-pyMPI-2.6a1/pynamic_driver.py
