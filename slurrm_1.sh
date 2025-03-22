#!/bin/bash
#SBATCH --job-name=test_job
#SBATCH --time=00:01:00
#SBATCH --partition=local
#SBATCH --ntasks=1

# Execute the pipeline or desired command
nextflow run pipeline.nf -profile docker