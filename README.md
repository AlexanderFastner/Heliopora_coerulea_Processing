# Helipora_coerulea_Processing
Separating and cleaning data using GC content, Coverage, and intervaled BLAST to cluster, identify, and annotate PacBio coral contigs

## Quickstart guide
Follow these steps to get started and run this notebook


### Create conda env
conda env create -f environment.yaml

### Activate conda env
conda activate Heliopora

### Add conda env to jupyter notebook
python -m ipykernel install --user --name=Heliopora


Parameters are at the top with info.
After Blob plot add target cluster manually to target_cluster variable

#### note -if it doesnt run it might be a missing dependency I forgot to add to environment