#!/bin/sh

export NPM_BIN=$($SHELL -i -c 'which npm')
# let user's shell, with config options tell us where npm is. May be installed via
# homebrew, MacPorts, NVM, etc, so ask

export NODE_BINARIES_PATH=$(PATH=$PATH:`dirname $NPM_BIN` $NPM_BIN bin -g)  # avoids "npm not in path" errors. WD-rpw 03-25-2014
export NODE_BINARY="$NODE_BINARIES_PATH/node"
