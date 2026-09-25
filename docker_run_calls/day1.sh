#!/usr/bin/env bash

# 1 reference download
# docker run --rm \
#     -v "$PWD:/work" \
#     -w /work \
#     docker.io/fgualdr/ngs-curl \
#     bash scripts/day1/01_reference_genome_annotation.sh


# 2 
docker run --rm \
    -v "$PWD:/work" \
    -w /work \
    docker.io/fgualdr/ngs-sra-tools:latest \
    bash scripts/day1/02_download_ena_fastq.sh

