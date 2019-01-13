#!/usr/bin/env bash

set -a

FFMPEG_BIN=$HOME/bin/ffmpeg
if [ -not -x ${FFMPEG_BIN} ];
then
   echo "FATAL ERROR: ffmpeg binary not found at ${FFMPEG_BIN}"
   exit 1;
fi

INPUT_FILE=$1
if [ "$INPUT_FILE"kk == "kk" ];
then
   echo "$(basename $0): missing input file"
   exit 1
fi

shift

OUTPUT_EXT=".mp4"
OUTPUT_FILE=$(dirname $INPUT_FILE)/$(basename $INPUT_FILE .MOV)${OUTPUT_EXT}
${FFMPEG_BIN} $* -i ${INPUT_FILE} ${OUTPUT_FILE}

