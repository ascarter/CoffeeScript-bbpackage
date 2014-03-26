#!/bin/sh

BASE_FOLDER=`dirname "$0"`
SUPPORT_FOLDER="$BASE_FOLDER/../../../Resources/"

source "$SUPPORT_FOLDER/npm_paths.sh"
JS2COFFEE_BIN="$NODE_BINARIES_PATH/js2coffee"

$JS2COFFEE_BIN $BB_DOC_PATH
