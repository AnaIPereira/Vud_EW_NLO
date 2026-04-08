#!/bin/bash

#SBATCH --job-name=feynmuon2loop
#SBATCH --output=/z/users/acpereira/projects/twoloop-ew/results_acp/muon/logfile-%j.log
#SBATCH --export=ALL
#SBATCH --mem=200G
#SBATCH --cpus-per-task=32
#SBATCH --time 0-02:00:00
#SBATCH --mail-type=BEGIN,END,FAIL

source /z/software/mathematica/14.0/env.sh

wolfram -script analyticalamplitude.m


