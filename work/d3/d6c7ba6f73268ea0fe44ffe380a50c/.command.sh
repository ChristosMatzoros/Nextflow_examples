#!/bin/bash -ue
printf 'ref1_2.fq.gz '
gunzip -c ref1_2.fq.gz | wc -l
