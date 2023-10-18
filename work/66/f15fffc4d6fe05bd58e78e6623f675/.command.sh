#!/bin/bash -ue
printf 'ref2_1.fq.gz '
gunzip -c ref2_1.fq.gz | wc -l
