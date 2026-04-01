# Code

This directory contains all code to reproduce the figures shown in the manuscript.

## sh_scripts
Contains both preprocessing and some downstream analyses:
- `Snakemake` pipeline used to produce the intermediate files
- Two scripts used to intersect LTR annotations to ERV proviruses and/or genes. See `4_gene_DEA.html` section: *Gene expression changes in relation to proximity to an ERV-W*

## r_scripts
Contains all R notebooks and its rendered htmls. Namely, all statistical analyses and visualization steps.
- `0_ervw_ltrs_rmsk_retrotector.Rmd` : ERV-W family overview
- `1_ltr7_ltr17_solo_provirus.Rmd` : Num of solo LTRs and proviruses among ERV-W and ERV-H
- `2_ERV_DEA.Rmd` : CRISPRa ERV-W differential expression analysis of ERV proviruses
- `3_TE_DEA.Rmd` : CRISPRa ERV-W differential expression analysis of TEs
- `4_gene_DEA.Rmd` : CRISPRa ERV-W differential expression analysis of genes
- `5_snRNAseq_iNGN.Rmd` : Single nuclei RNAseq results from day 32 iNGN sample