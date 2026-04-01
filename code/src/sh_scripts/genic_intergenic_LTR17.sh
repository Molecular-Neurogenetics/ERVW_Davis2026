#!/bin/bash
DIR=/Volumes/MyPassport/MN11_HERVW/invitro/results/tables/LTR17_distance_bin_hiPSC
echo "How many LTR17 (ERV-W LTR) there are?"
tail -n +2 $DIR/hg38_rmsk_TEtranscripts_LTR17.bed | wc -l # It has a header
# 851

echo "How many solo LTRs does LTR17 (ERV-W LTR) has? (No intersect with any retrotector prediction)"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_LTR17.bed -b /Volumes/MyPassport/annotations/human/retrotector/hg38_HERVs_prediction_format.bed -v | wc -l
# 715
echo "Save those to a bed"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_LTR17.bed -b /Volumes/MyPassport/annotations/human/retrotector/hg38_HERVs_prediction_format.bed -v > $DIR/hg38_rmsk_TEtranscripts_soloLTR17.bed
echo "Save those that do intersect with a provirus (prediction) to a file (852-715=137)"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_LTR17.bed -b /Volumes/MyPassport/annotations/human/retrotector/hg38_HERVs_prediction_format.bed -u > $DIR/hg38_rmsk_TEtranscripts_provirus_assoc_LTR17.bed

echo "How many solo LTR17s are genic?"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_soloLTR17.bed -b /Volumes/MyPassport/annotations/human/gencode/v38/gencode.v38.annotation.basic.genes.bed -u | wc -l
# 319
echo "What about intergenic?"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_soloLTR17.bed -b /Volumes/MyPassport/annotations/human/gencode/v38/gencode.v38.annotation.basic.genes.bed -v | wc -l
# 396

echo "How many ERV-W LTR17s are genic?"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_provirus_assoc_LTR17.bed -b /Volumes/MyPassport/annotations/human/gencode/v38/gencode.v38.annotation.basic.genes.bed -u | wc -l
# 58
echo "What about intergenic?"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_provirus_assoc_LTR17.bed -b /Volumes/MyPassport/annotations/human/gencode/v38/gencode.v38.annotation.basic.genes.bed -v | wc -l
# 79



