#!/bin/sh

BASE_FOLDER=`dirname "$0"`
SUPPORT_FOLDER="$BASE_FOLDER/../../Resources/"

source "$SUPPORT_FOLDER/npm_paths.sh"
COFFEE_BIN="$NODE_BINARIES_PATH/coffee"

PATH=$PATH:$NODE_BINARIES_PATH coffee -p $BB_DOC_PATH > /dev/null && echo "Syntax OK"
# yes, it does the same thing as show generated Javascript scripts
# but in this case we don't care at all about the output
