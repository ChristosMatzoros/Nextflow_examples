#!/bin/bash -ue
sleep 1
printf 'etoh60_1_2.fq.gz '
gunzip -c etoh60_1_2.fq.gz | wc -l
