#!/bin/bash -ue
sleep 1
printf 'temp33_1_2.fq.gz '
gunzip -c temp33_1_2.fq.gz | wc -l
