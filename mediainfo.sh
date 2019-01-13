#!/usr/bin/env bash

HOME_DIR=$(dirname $0)
export LD_LIBRARY_PATH=/kunden/homepages/9/d230229885/htdocs/incoming/mediainfo/usr/lib/x86_64-linux-gnu:.:$LD_LIBRARY_PATH
$HOME_DIR/mediainfo $*

