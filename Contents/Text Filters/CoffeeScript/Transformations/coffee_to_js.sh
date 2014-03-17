#!/bin/sh

if [[ ! -e /usr/local/bin/coffee ]]
then
  echo "please sudo npm install -g coffee-script";
  exit;
fi

PATH=$PATH:/usr/local/bin/ coffee -p $BB_DOC_PATH
