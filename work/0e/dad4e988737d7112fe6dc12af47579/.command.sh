#!/bin/bash -ue
sleep 1
printf 'etoh60_1_1.fq.gz '
gunzip -c etoh60_1_1.fq.gz | wc -l
