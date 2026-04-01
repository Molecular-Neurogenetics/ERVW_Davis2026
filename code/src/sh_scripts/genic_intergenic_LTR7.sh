#!/bin/bash
DIR=/Volumes/MyPassport/MN11_HERVW/invitro/results/tables/LTR7_distance_bin_hiPSC
echo "How many LTR7 (ERV-H LTR) there are?"
tail -n +2 $DIR/hg38_rmsk_TEtranscripts_LTR7.bed | wc -l # It has a header
# 1480

echo "How many solo LTRs does LTR7 (ERV-H LTR) has? (No intersect with any retrotector prediction)"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_LTR7.bed -b /Volumes/MyPassport/annotations/human/retrotector/hg38_HERVs_prediction_format.bed -v | wc -l
# 977
echo "Save those to a bed"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_LTR7.bed -b /Volumes/MyPassport/annotations/human/retrotector/hg38_HERVs_prediction_format.bed -v > $DIR/hg38_rmsk_TEtranscripts_soloLTR7.bed
echo "Save those that do intersect with a provirus (prediction) to a file"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_LTR7.bed -b /Volumes/MyPassport/annotations/human/retrotector/hg38_HERVs_prediction_format.bed -u > $DIR/hg38_rmsk_TEtranscripts_provirus_assoc_LTR7.bed

echo "How many solo LTR7s are genic?"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_soloLTR7.bed -b /Volumes/MyPassport/annotations/human/gencode/v38/gencode.v38.annotation.basic.genes.bed -u | wc -l
# 409
echo "What about intergenic?"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_soloLTR7.bed -b /Volumes/MyPassport/annotations/human/gencode/v38/gencode.v38.annotation.basic.genes.bed -v | wc -l
# 568

echo "How many ERV-W LTR7s are genic?"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_provirus_assoc_LTR7.bed -b /Volumes/MyPassport/annotations/human/gencode/v38/gencode.v38.annotation.basic.genes.bed -u | wc -l
# 224
echo "What about intergenic?"
bedtools intersect -a $DIR/hg38_rmsk_TEtranscripts_provirus_assoc_LTR7.bed -b /Volumes/MyPassport/annotations/human/gencode/v38/gencode.v38.annotation.basic.genes.bed -v | wc -l
# 280



