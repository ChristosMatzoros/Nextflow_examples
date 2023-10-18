#!/bin/bash -ue
sleep 1
printf 'ref1_2.fq.gz '
gunzip -c ref1_2.fq.gz | wc -l
