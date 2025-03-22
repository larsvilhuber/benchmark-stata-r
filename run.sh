#!/bin/bash

echo "Starting script $(date)"

time R CMD BATCH code/1-generate-datasets.r code/1-generate-datasets.rout
time R CMD BATCH code/2-benchmark-r.r code/2-benchmark-r.rout

cd code
time stata-mp -b do 3-benchmark-stata.do
cd -

time R CMD BATCH code/4-graph.r code/4-graph.rout

