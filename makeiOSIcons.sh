#!/usr/bin/env bash
SOURCE_IMAGE=$1

SOURCE_BASENAME=${SOURCE_IMAGE%.*}

# imagemagick automatically converts format based on file extension
/usr/local/bin/convert ${SOURCE_IMAGE} -resize 40x40 ${SOURCE_BASENAME}20x20@2x.png
/usr/local/bin/convert ${SOURCE_IMAGE} -resize 60x60 ${SOURCE_BASENAME}20x20@3x.png
/usr/local/bin/convert ${SOURCE_IMAGE} -resize 58x58 ${SOURCE_BASENAME}29x29@2x.png
/usr/local/bin/convert ${SOURCE_IMAGE} -resize 87x87 ${SOURCE_BASENAME}29x29@3x.png

/usr/local/bin/convert ${SOURCE_IMAGE} -resize 80x80 ${SOURCE_BASENAME}40x40@2x.png
/usr/local/bin/convert ${SOURCE_IMAGE} -resize 120x120 ${SOURCE_BASENAME}40x40@3x.png
/usr/local/bin/convert ${SOURCE_IMAGE} -resize 120x120 ${SOURCE_BASENAME}60x60@2x.png
/usr/local/bin/convert ${SOURCE_IMAGE} -resize 180x180 ${SOURCE_BASENAME}60x60@3x.png

/usr/local/bin/convert ${SOURCE_IMAGE} -resize 20x20 ${SOURCE_BASENAME}20x20@1x.png
/usr/local/bin/convert ${SOURCE_IMAGE} -resize 29x29 ${SOURCE_BASENAME}29x29@1x.png

/usr/local/bin/convert ${SOURCE_IMAGE} -resize 40x40 ${SOURCE_BASENAME}40x40@1x.png
/usr/local/bin/convert ${SOURCE_IMAGE} -resize 76x76 ${SOURCE_BASENAME}76x76@1x.png
/usr/local/bin/convert ${SOURCE_IMAGE} -resize 152x152 ${SOURCE_BASENAME}76x76@2x.png

/usr/local/bin/convert ${SOURCE_IMAGE} -resize 167x167 ${SOURCE_BASENAME}83.5x83.5@2x.png

/usr/local/bin/convert ${SOURCE_IMAGE} -resize 1024x1024 ${SOURCE_BASENAME}1024x1024@1x.png


