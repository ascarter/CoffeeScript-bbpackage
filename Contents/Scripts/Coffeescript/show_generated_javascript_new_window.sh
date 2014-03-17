#!/bin/sh

PATH=$PATH:/usr/local/bin/ coffee -p $BB_DOC_PATH | /usr/local/bin/bbedit --clean --new-window  -
