#!/bin/sh

BASE_FOLDER=`dirname "$0"`
SUPPORT_FOLDER="$BASE_FOLDER/../../Resources/"

source "$SUPPORT_FOLDER/npm_paths.sh"

COFFEE_BIN="$NODE_BINARIES_PATH/coffee"

PATH=$PATH:$NODE_BINARIES_PATH $COFFEE_BIN -p $BB_DOC_PATH | /usr/local/bin/bbedit --clean --new-window  -
