# Heliopora_coerulea_Processing
This notebook will help you Separate and clean your Biological data using GC content, Coverage, and intervaled BLAST to cluster, identify, and annotate long (PacBio) Contigs


## Contents

[1. Get GC content from contigs and in chunk sizes, then visualize both](#1)\
2. Get coverage for contigs and in chunk sizes, then visualize both\
3. Histogram of contig lengths\
4. Blob plot (gc vs average coverage) for both\
5. Kmeans clustering\
6. Take cluster from kmeans as input to Blast_script\
7. get concencus classification for each contig\
8. Blob plot again and mark points that had accurate blast hits\
9. Histogram for length distribution\
10. Take contigs starting with largest up til genome size\
11. Add contig ids to fasta file for annotation\

# Overview

<a name="1">
#### 1. Get GC content from contigs and in chunk sizes, then visualize both
</a>
![GC Content](https://github.com/AlexanderFastner/Heliopora_coerulea_Processing/blob/main/images/GC_content_000032.png?raw=true)\
#### 2. Get coverage for contigs and in chunk sizes, then visualize both 
![GC Content](https://github.com/AlexanderFastner/Heliopora_coerulea_Processing/blob/main/images/Coverage_000032.png?raw=true)\
#### 3. Histogram of contig lengths
![Histogram of contig lengths](https://github.com/AlexanderFastner/Heliopora_coerulea_Processing/blob/main/images/Histogram_of_lengths.png?raw=true)\
#### 4. Blob plot (gc vs average coverage) for both
![Blob](https://github.com/AlexanderFastner/Heliopora_coerulea_Processing/blob/main/images/Blob.png?raw=true)\
#### 5. Kmeans clustering 
![Kmeans](https://github.com/AlexanderFastner/Heliopora_coerulea_Processing/blob/main/images/Kmeans_clustering.png?raw=true)\
#### 6. Take cluster from kmeans as input to Blast_script
#### 7. Get concencus classification for each contig
#### 8. Blob plot again and mark points that had accurate blast hits
![Fasta Blob](https://github.com/AlexanderFastner/Heliopora_coerulea_Processing/blob/main/images/Fasta_Blob.png?raw=true)\
#### 9. Histogram for length distribution
![Histogram of lengths and cutoff](https://github.com/AlexanderFastner/Heliopora_coerulea_Processing/blob/main/images/Histogram_of_lengths_of_subset.png?raw=true)\
#### 10. Take contigs starting with largest up to genome size
#### 11. Add contig ids to fasta file for annotation


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

### general run
1. Start with gc_vs_coverage\
2. Parameters are at the top with info.\
3. After Blob plot add target cluster manually to target_cluster variable! default is 1 but that might not always be correct\
<b>4. Run Blast with Blast_script.sh</b>\
5. Finish the fasta clustering at the bottom of gc_vs_coverage

