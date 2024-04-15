#!/bin/bash -l
#SBATCH --time=12:00:00
#SBATCH --ntasks=24
#SBATCH --ntasks-per-node=24
#SBATCH --mem=200g
#SBATCH --tmp=200g
#SBATCH --output=rfm_Run_job.out
#SBATCH --error=rfm_Run_job.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=paidi001@umn.edu
#SBATCH -p v100
#SBATCH --gres=gpu:v100:1

module load python3
module load churp/0.2.5

$CHURP bulk_rnaseq -f  /home/bernlohr/data_release/umgc/data_delivery/2024-q1/240315_VH00552_40_AACHH3NHV/Bernlohr_Project_078/ -x /common/bioref/ensembl/main/Mus_musculus-110/GRCm39/hisat2/genome -g /common/bioref/ensembl/main/Mus_musculus-110/GRCm39/annotation/Mus_musculus.GRCm39.110.gtf.gz -o /home/wangjh/paidi001/Benlohr_78 -d /home/wangjh/paidi001/Benlohr_78/Work 
