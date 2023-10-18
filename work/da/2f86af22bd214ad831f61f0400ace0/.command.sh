#!/bin/bash -ue
sleep 1
printf 'etoh60_2_1.fq.gz '
gunzip -c etoh60_2_1.fq.gz | wc -l
