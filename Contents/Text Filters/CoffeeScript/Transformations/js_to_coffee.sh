#!/bin/sh

if [[ -e ~/.bbedit/packages/coffeescript.variables ]]
then
	source ~/.bbedit/packages/coffeescript.variables
else
	export JS2COFFEE=/usr/local/bin/js2coffee
fi

if [[ ! -e $JS2COFFEE ]]
then
  echo "please sudo npm install -g js2coffee coffee-script";
  exit;
fi

$JS2COFFEE $BB_DOC_PATH
