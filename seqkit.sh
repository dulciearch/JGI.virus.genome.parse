#!/bin/bash
#SBATCH --job-name=seqkit
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --time=168:00:00
#SBATCH --mem=250gb
#SBATCH --output=seqkit.%J.out
#SBATCH --error=seqkit.%J.err
#SBATCH --partition=yinlab,batch,guest



ml seqkit
seqkit split IMGVR_all_proteins-high_confidence.faa -p 100 -2 -j 32
