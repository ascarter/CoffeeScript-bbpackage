#!/bin/sh

export JS2COFFEE=/usr/local/bin/js2coffee

if [[ ! -e $JS2COFFEE ]]
then
  echo "please sudo npm install -g js2coffee coffee-script";
  exit;
fi

$JS2COFFEE $BB_DOC_PATH
