#!/bin/bash -ue
sleep 1
printf 'temp33_2_2.fq.gz '
gunzip -c temp33_2_2.fq.gz | wc -l
