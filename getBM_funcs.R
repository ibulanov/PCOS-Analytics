getBM(
  attributes = c("ensembl_transcript_id", "ensembl_gene_id"),
  filters = "ensembl_transcript_id",
  values = "ENST00000502574",
  mart = ensembl
)

getBM(
  attributes = c("ensembl_gene_id", "external_gene_name"),
  filters = "ensembl_gene_id",
  values = "ENSG00000249240",
  mart = ensembl
)

