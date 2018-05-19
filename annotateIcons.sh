#!/usr/bin/env bash
# Copies over just those icons in need of a title
SRCROOT="."
SOURCE_IMAGE=$1
SOURCE_BASENAME=${SOURCE_IMAGE%.*}
TARGET_PLATFORM_DIR="Ster Wers CP Shared"
DESIRED_TITLE="Graphics Test"
CONFIGURATION="Run"

IFS=$'\n'

buildNumber=$(/usr/libexec/PlistBuddy -c "Print CFBundleVersion" "${PROJECT_DIR}/${INFOPLIST_FILE}")
versionNumber=$(/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" "${PROJECT_DIR}/${INFOPLIST_FILE}")
PATH=${PATH}:/usr/local/bin

function generateIcon () {
    BASE_IMAGE_NAME=$1
    TARGET_PATH="./${TARGET_PLATFORM_DIR}/Assets.xcassets/AppIcon.appiconset/${BASE_IMAGE_NAME}"
    echo "Target path $TARGET_PATH"
    echo "Source root $SRCROOT"
    echo "Base image name $BASE_IMAGE_NAME"
    BASE_IMAGE_PATH="${SRCROOT}/${BASE_IMAGE_NAME}"
    echo "Base image with path $BASE_IMAGE_PATH"
    WIDTH=$(identify -format %w ${BASE_IMAGE_PATH})
    echo "Width $WIDTH"
    FONT_SIZE=$(echo "$WIDTH * .10" | bc -l)
    echo "Font size $FONT_SIZE"
    
    convert ${BASE_IMAGE_PATH} -fill lightgray -font Times-Bold -pointsize ${FONT_SIZE} -gravity north -annotate +0+5 "${DESIRED_TITLE}" ${TARGET_PATH}
    
    if [ "${CONFIGURATION}" == "Debug" ]; then
    #  convert debugRibbon.png -resize ${WIDTH}x${WIDTH} resizedRibbon.png
    #  convert ${BASE_IMAGE_PATH} -fill white -font Times-Bold -pointsize ${FONT_SIZE} -gravity south -annotate 0 "$buildNumber" - | composite resizedRibbon.png - ${TARGET_PATH}
    echo DEBUG
    fi
    
    if [ "${CONFIGURATION}" == "Beta" ]; then
    #  convert betaRibbon.png -resize ${WIDTH}x${WIDTH} resizedRibbon.png
    #  convert ${BASE_IMAGE_PATH} -fill white -font Times-Boldr -pointsize ${FONT_SIZE} -gravity south -annotate 0 "$buildNumber" - | composite resizedRibbon.png - ${TARGET_PATH}
    echo BETA
    fi
}

generateIcon ${SOURCE_BASENAME}60x60@2x.png
generateIcon ${SOURCE_BASENAME}60x60@3x.png
generateIcon ${SOURCE_BASENAME}76x76@1x.png
generateIcon ${SOURCE_BASENAME}76x76@2x.png
