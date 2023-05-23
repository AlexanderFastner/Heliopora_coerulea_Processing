# Helipora_coerulea_Processing
Separating and cleaning data using GC content, Coverage, and intervaled BLAST to cluster, identify, and annotate PacBio coral contigs

## Quickstart guide
Follow these steps to get started and run this notebook

## Setup conda
setup your favorite conda (anaconda, miniconda...)

### Create conda env
conda env create -f environment.yaml

### Activate conda env
conda activate Heliopora

### Add conda env to jupyter notebook
python -m ipykernel install --user --name=Heliopora

### Open notebook
jupyter notebook

### general
Start with gc_vs_coverage
Parameters are at the top with info.
After Blob plot add target cluster manually to target_cluster variable
Temporarily the blast step is not integrated yet, so run Blast, then blast_results, then finish the fasta clustering at the bottom of gc_vs_coverage

#### note -if it doesnt run it might be a missing dependency I forgot to add to environment