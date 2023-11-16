#!/bin/bash
##########################################################
## 100  high_prio_large    cpu=80,mem=755G   max. 2days ##
## 100  high_prio          cpu=32,mem=300G   max. 7days ##
## 10   normal_prio_large  cpu=80,mem=755G   max. 7days ##
## 10   normal_prio        cpu=32,mem=300G   max. 28days##
## 1    low_prio_long      cpu=32,mem=300G   --nolimit--##
## 1    low_prio_res        --nolimit--      max. 7days ##
##########################################################
#SBATCH --job-name=Hcoe_blast
#SBATCH --output=Hcoe_blast.%A.%a.log
#SBATCH --error=Hcoe_blast.%A.%a.elog
#SBATCH --mail-type=none
#SBATCH --mail-user=afastne@lrz.uni-muenchen.de
#SBATCH --qos=high_prio
#SBATCH --cpus-per-task=8
#SBATCH --ntasks=1
#SBATCH --mem=64G
#module load gnu openmpi boost
##########################################################
##Define input/output files and folders
export BLASTDB=/sto/nfsscratch/grp_gwoerhe/DBs/NCBI/nt4
#export BLASTDB=/sto/nfsscratch/grp_gwoerhe/DBs/octo_dino_blast
EVALUE=0.000001
SEQS=1
#DB=octo_dino_genomes_blastDB
##########################################################
for i in *.fasta; do
	echo "blastn -db octo_dino_genomes_blastDB -evalue $EVALUE -query $i -out ${i}.long.tab -outfmt="6 delim= qaccver saccver pident length mismatch gapopen qstart qend sstart send evalue bitscore sallseqid score nident positive gaps ppos qframe sframe qseq sseq qlen slen salltitles" -num_threads $SLURM_CPUS_PER_TASK"
	#blast run against nt
	srun blastn -db nt -query $i -evalue $EVALUE -out ${i}.long.tab -outfmt="6 delim= qaccver saccver pident length mismatch gapopen qstart qend sstart send evalue bitscore sallseqid score nident positive gaps ppos qframe sframe qseq sseq qlen slen salltitles" -max_target_seq $SEQS -num_threads $SLURM_CPUS_PER_TASK
	#blast run
	#srun blastn -db $DB -query $i -evalue $EVALUE -out ${i}.long.tab -outfmt="6 delim= qaccver saccver pident length mismatch gapopen qstart qend sstart send evalue bitscore sallseqid score nident positive gaps ppos qframe sframe qseq sseq qlen slen salltitles" -num_threads $SLURM_CPUS_PER_TASK
    #srun blastn -db $DB -query $i -evalue $EVALUE -out ${i}.long.tab -outfmt="6 delim= qaccver saccver pident length mismatch gapopen qstart qend sstart send evalue bitscore sallseqid score nident positive gaps ppos qframe sframe qseq sseq qlen slen salltitles" -max_target_seqs $SEQS -num_threads $SLURM_CPUS_PER_TASK
done
##EOF
