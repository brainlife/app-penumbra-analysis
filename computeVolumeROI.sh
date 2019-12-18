#!/bin/bash

for ROI in ./*.nii.gz
do
	fslstats ${ROI} -V > ${ROI::-7}_volume.txt
done
