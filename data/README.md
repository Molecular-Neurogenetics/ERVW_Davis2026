# Data

## Auxiliary files
- `gencode.v38.annotation_protein_coding_genes.bed` : Protein coding genes bed file from Gencode version 38 of hg38.
- `hg38_ERVs_prediction.bed` : Retrotector prediction annotation bed file of hg38.
- `hg38_rmsk_TEtranscripts_ERVW_LTRs.bed` : Repeatmasker annotation bed file of LTRs associated to ERV-Ws family (as described by Kojima, 2018). 
- `hg38_rmsk_TEtranscripts_LTR17.bed` : Repeatmasker annotation bed file of LTR17s.

### Samplesheets with metadata of the experiments
- `samplesheet_0dpi.tab`: hiPSC
- `samplesheet_30dpi.tab`: iNGN day 30


## Result files

### Intersection of ERVs to their associated LTRs with retrotector predictions
1. `hg38_rmsk_TEtranscripts_ERVW_LTRs_intersect_retrotector.bed`: Output of bedtools intersect when you intersect all ERV-W associated LTRs to retrotector annotation (`-wo`).
2. `hg38_rmsk_TEtranscripts_ERVW_LTR17_intersect_retrotector_predictions.bed`: Extracted only LTR17 from the previous point (1), and kept only the coordinates of *unique* predictions. Exact command on header.
3. `hg38_rmsk_TEtranscripts_ERVH_LTR7_intersect_retrotector.bed`: Output of bedtools intersect when you intersect all ERV-H associated LTR7 (A, B, C, Y) to retrotector annotation (`-wo`).
4. `hg38_rmsk_TEtranscripts_ERVH_LTR7_intersect_retrotector_predictions.bed`: Kept from the previous point (3) only the coordinates of *unique* predictions.

### ERV differential expression analysis
- `ERV_DEA.xlsx` : Differential expression analysis of ERV retrotector predictions. Results tables from DESeq2.
- `data/2_ERV_DEA.Rdata`: R data resulting of `2_ERV_DEA.Rmd`. The rest were too heavy to upload to github.

### Gene differential expression analysis and GSEA
- `genes_DEA.xlsx`: Gene differential expression analysis results from DESeq2
- `genes_GSEA.xlsx`: GSEA results

### Proximity analyses
Gene effect (log2FC) as a function of distance to an LTR17
- `LTR17_distance_bin_day30/`: CRISPRa in iNGN day 30
- `LTR17_distance_bin_hiPSC/`: CRISPRa in hiPSC

### RData
- `2_ERV_DEA.Rdata`: R data resulting of `2_ERV_DEA.Rmd`. The rest were too heavy to upload to github.


#### Missing from github because they are too large:
- `hg38_rmsk_TEtranscripts.bed` : Repeatmasker annotation bed file (complete), curated by TEtranscripts' authors.
- `data/4_gene_DEA.Rdata`: Too heavy to upload to github.
- `data/5_snRNAseq_iNGN.Rdata`: Too heavy to upload to github.
- `data/3_TE_DEA.Rdata`: Too heavy to upload to github.
