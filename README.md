## Loka_challenge

*Exercise 1: Simple pipelining: Code and Documentation*

# Perturb-seq small test dataset to validate the pipeline, 2 fastq files control (SRR9916603; SRR9916604) and 2 fastq files with chromosome 8 enhancer perturbations (SRR9916627; SRR9916628):

Schraivogel, D., Gschwind, A. R., Milbank, J. H., Leonce, D. R., Jakob, P., Mathur, L., Korbel, J. O., Merten, C. A., Velten, L., & Steinmetz, L. M. (2020). Targeted Perturb-seq enables genome-scale genetic screens in single cells. Nature methods, 17(6), 629–635. https://doi.org/10.1038/s41592-020-0837-5 

# Instructions for installing dependencies:

A. Install Snakemake
```
#Instalation through Conda:
#1. Install mamba:
conda install -n base -c conda-forge mamba

#2.Full instalation of Snakemake with mamba:
mamba create -c conda-forge -c bioconda -n snakemake snakemake

#3.Activation of Snakemake, and confirm that is installed:
mamba activate snakemake
snakemake --help
```

B. Pull the images for the primary analysis (Alignment):

```
#1.STAR alignment

```

C. Pull the images for the secondary analysis, as well as, install tools in R:

# Running the pipeline

1. Copy the code from GitHub repository to the local machine:
```
git clone https://github.com/RitaSoaresss/LOKA_CHALLENGE-pipeline.git
cd LOKA_CHALLENGE-pipeline
```
2. Set Up the Conda Environment:
```
conda env create -f environment.yml  # Create the environment from the environment.yml file
conda activate your-env  # Activate the environment (replace 'your-env' with the actual environment name)
```
3. Run the Pipeline:
```
snakemake --snakefile LOKA_CHALLENGE --config input=path/to/FASTQ output=path/to/results
```
