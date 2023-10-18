#!/bin/bash -ue
sleep 4
printf 'ref1_1.fq.gz '
gunzip -c ref1_1.fq.gz | wc -l
