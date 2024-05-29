#!/bin/bash
echo "DSO Mono_TUM" | figlet

cd ../

sequenceNumber=$1
echo "Launching sequence $sequenceNumber"

files=datasets/sequence_$sequenceNumber/images.zip
calib=datasets/sequence_$sequenceNumber/camera.txt
gamma=datasets/sequence_$sequenceNumber/pcalib.txt
vignette=datasets/sequence_$sequenceNumber/vingnette.png
preset=$2
mode=$3

./build/bin/dso_dataset files=$files calib=$calib gamma=$gamma vignette=$vignette preset=$preset mode=$mode
