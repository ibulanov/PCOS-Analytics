library(seqinr)
library(tidyverse)

miRNAs <- PCOS_genes$microRNAs_our_non_zero_counts
miRbase_all <- read.fasta(file = "/home/igor/Downloads/mature.fa", 
                       seqtype = "AA",as.string = TRUE, set.attributes = FALSE)

result <- miRbase_all[names(miRbase_all) %in% miRNAs]

write.fasta(sequences = result, names = names(result), file.out = "/home/igor/Downloads/OUR_PCOS_miRNAs.fasta")

#### miRWalk processing

miRWalk_miRNA_Targets <- read.csv("/media/igor/ssd300/data/PCOS/Networks/miRWalk_miRNA_Targets.csv")

miRWalk_miRNA_Targets_merged <- dplyr::filter(miRWalk_miRNA_Targets, mirnaid %in% miRNAs)
write_delim(miRWalk_miRNA_Targets_merged, "/home/igor/Downloads/miRWalk_miRNA_Targets_merged.tsv", delim = "\t")
