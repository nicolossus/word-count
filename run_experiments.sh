#! /bin/bash

if [[ -z "${DATADIR}" ]]; then
    DATADIR="data"
fi

if [[ -z "${RESULTSDIR}" ]]; then
    RESULTSDIR="results"
fi

if [[ -z "${FIGDIR}" ]]; then
    FIGDIR="figures"
fi

mkdir -p ${RESULTSDIR}
mkdir -p ${FIGDIR}

for title in abyss isles last sierra; do
    python3 code/count.py ${DATADIR}/${title}.txt -o ${RESULTSDIR}/${title}.json
    python3 code/plot.py ${RESULTSDIR}/${title}.json -o ${FIGDIR}/${title}.png
done
