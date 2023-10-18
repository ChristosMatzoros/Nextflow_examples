#!/bin/bash -ue
sleep 1
printf 'ref2_2.fq.gz '
gunzip -c ref2_2.fq.gz | wc -l
