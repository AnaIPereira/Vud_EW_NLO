#!/bin/bash

#SBATCH --job-name=penguins
#SBATCH --output=/z/users/acpereira/projects/twoloop-ew/results_acp/muon/logfile-%j.log
#SBATCH --export=ALL
#SBATCH --mem=100G
#SBATCH --cpus-per-task=32
#SBATCH --time 0-03:00:00
#SBATCH --mail-type=BEGIN,END,FAIL

source /z/software/mathematica/14.0/env.sh

wolfram -script all_diags.m


