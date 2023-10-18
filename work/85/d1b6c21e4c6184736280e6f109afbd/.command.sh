#!/bin/bash -ue
sleep 1
printf 'ref1_1.fq.gz '
gunzip -c ref1_1.fq.gz | wc -l
