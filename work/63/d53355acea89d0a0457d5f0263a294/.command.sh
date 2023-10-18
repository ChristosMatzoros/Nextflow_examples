#!/bin/bash -ue
sleep 1
printf 'temp33_3_1.fq.gz '
gunzip -c temp33_3_1.fq.gz | wc -l
