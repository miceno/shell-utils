#!/bin/bash

function usage(){
   echo "$(basename $0): SOURCE TARGET"
}

SOURCE=${1:-}
TARGET=${2:-}
if [ -z "$SOURCE" ] || [ -z "$TARGET" ]; then
   usage
   exit 1
fi
diff -rupN $SOURCE $TARGET 
