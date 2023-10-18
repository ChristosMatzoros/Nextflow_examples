#!/bin/bash -ue
sleep 1
printf 'ref3_2.fq.gz '
gunzip -c ref3_2.fq.gz | wc -l
