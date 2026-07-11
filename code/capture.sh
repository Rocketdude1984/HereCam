#!/bin/bash

# base directory
BASE="/home/herecam/images"

# create year, month, day folder
YEAR=$(date +%Y)
MONTH=$(date +%m)
DAY=$(date +%d)

DIR="$BASE/$YEAR/$MONTH/$DAY"

mkdir -p "$DIR"

# name image

FILENAME=$(date +%Y-%m-%d_%H-%M).jpg
echo "Taking Image"

# take image, no preview, exposure set to whole image average, manual focus at 0.2, rotate image 180 deg, jpg at 90% qaulity, image size 2560x1440
rpicam-still -n --metering average --autofocus-mode manual --vflip --hflip --width 2560 --height 1440 --lens-position 0.2 -q 90 -o "$DIR/$FILENAME"
