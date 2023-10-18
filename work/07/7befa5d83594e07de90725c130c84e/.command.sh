#!/bin/bash -ue
sleep 10
printf 'ref3_1.fq.gz '
gunzip -c ref3_1.fq.gz | wc -l
