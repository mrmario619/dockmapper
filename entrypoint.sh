#!/bin/bash

set -e

# Usage:
#   docker run --volume </host/path>:</path/inside/container> nmapdocker
# EX. "docker run -v $PWD:/root dockmapper:latest /root/InputList /root/OutputFile"
if [ -z "${1}" ]; then
    echo "Please, provide input name"
    exit 1
fi

if [ -z "${2}" ]; then
    echo "Please, provide output name"
    exit 1
fi

INPUT="${1}"
OUTPUT="${2}"

nmap -iL ${INPUT} -sS -T3 -A -oA ${OUTPUT} --stylesheet ./nmap-bootstrap.xsl && xsltproc -o "${OUTPUT}.html" ./nmap-bootstrap.xsl ${OUTPUT}.xml