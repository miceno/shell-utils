#!/usr/bin/env bash

set -a

CONVERT_BIN=$(which convert)
if [ ! -x ${CONVERT_BIN} ];
then
   echo "FATAL ERROR: CONVERT binary not found at ${CONVERT_BIN}"
   exit 1
fi

INPUT_FILE=$1
if [ "$INPUT_FILE"kk == "kk" ];
then
   echo "$(basename $0): missing input file"
   exit 1
fi

shift

filename=$(basename -- "$INPUT_FILE")
extension="${filename##*.}"
filename="${filename%.*}"

OUTPUT_EXT=".opt.jpg"
OUTPUT_FILE=$(dirname $INPUT_FILE)/$(basename $INPUT_FILE .$extension)${OUTPUT_EXT}

${CONVERT_BIN} $* ${INPUT_FILE} -sampling-factor 4:2:0 -strip -interlace JPEG -colorspace sRGB ${OUTPUT_FILE}

# convert INPUT.jpg -sampling-factor 4:2:0 -strip [-resize WxH] [-quality N] [-interlace JPEG] [-colorspace Gray/sRGB] OUTPUT.jpg

