#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"
echo "==>rplpl-slurm.queue1-dy-r5d2xlarge-1.2.out<=="
head -n 1 rplpl-slurm*.out
echo -e "\n==> rplspl-slurm.queue1-dy-r5d2xlarge-1.3.out<=="
head -n 1 rplspl-slurm*.out

echo "End Times"
echo "==>rplpl-slurm.queue1-dy-r5d2xlarge-1.2.out<=="
tail -n 5 rplpl-slurm*.out
echo -e "\n==> rplspl-slurm.queue1-dy-r5d2xlarge-1.3.out<=="
tail -n 5 rplspl-slurm*.out


