# Helipora_coerulea_Processing
Separating and cleaning data using GC content, Coverage, and intervaled BLAST to cluster, identify, and annotate PacBio coral contigs

# Overview

1. Get GC content from contigs and in chunk sizes, then visualize both

2. Get coverage for contigs and in chunk sizes, then visualize both 
3. Histogram of contig lengths
4. Blob plot (gc vs average coverage) for both
5. Kmeans clustering
6. Take cluster from kmeans as input to blast
7. Blob plot again and mark points that had accurate blast hits
8. Histogram for length distribution
9. Take contigs starting with largest up til genome size
10. Add contig ids to fasta file










## Quickstart guide
Follow these steps to get started and run this notebook

### Setup conda
setup your favorite conda (anaconda, miniconda...)

### Create conda env
conda env create -f environment.yml

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
