#!/bin/bash

dwi=`jq -r '.dwi' config.json`

for ROI in ./*.nii.gz
do
	echo ${ROI}
	echo ${dwi}
	mri_vol2vol --mov ${ROI} --targ ${dwi} --regheader --o dwi_${ROI:2}
done
