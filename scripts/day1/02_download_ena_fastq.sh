#!/usr/bin/env bash
set -euo pipefail
srr="ERR11479311"
sample="WT_2"
outdir="raw_data/fastq/rnaseq"
mkdir -p "${outdir}"
fasterq-dump "${srr}" \
  --split-files \
  --threads 2 \
  --progress \
  --details \
  --outdir "${outdir}"

pigz -4 "${outdir}/${srr}"*.fastq

mv '${outdir}/${srr}_1.fastq.gz' '${outdir}/${sample}_R1.fastq.gz'

mv '${outdir}/${srr}_2.fastq.gz' '${outdir}/${sample}_R2.fastq.gz'
