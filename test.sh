#!/bin/bash
#Set job requirements (note set time 1.5 to 2x longer than expected)
#SBATCH --job-name="robustcheck"

#SBATCH -t 66:00:00 
#SBATCH -p genoa
#SBATCH --exclusive 
#SBATCH --nodes=1 
#SBATCH --tasks-per-node=1  
#SBATCH --cpus-per-task=192 

#Send email at start en end
#SBATCH --mail-type=BEGIN,END
#SBATCH --mail-user=k.park@uva.nl

#SBATCH --output=log/%j.out                 # where to store the output ( %j is the JOBID )
#SBATCH --error=log/%j.err                  # where to store error messages

#Loading modules
module load 2023
module load R-bundle-CRAN/2023.12-foss-2023a


Rscript /gpfs/home1/kpark/code/SN_robustcheck.R