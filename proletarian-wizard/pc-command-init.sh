#!/bin/bash

CONTEXT_PATH=""
CREATE=false
source "$INCLUDE/pc-parse-init.sh"

if [ -z "$CONTEXT_PATH" ]; then
  echo "Error: Missing context path to initialize"
  usage_init
  exit -1
fi

if [ ! -d "$CONTEXT_PATH" ]; then
  if $CREATE ; then
    mkdir -p "$CONTEXT_PATH"
  else
    echo "Error: folder does not exist. Specify -c/--create to create it"
    usage_init
    exit -1
  fi
fi

mkdir "$CONTEXT_PATH/$FOLDER_INBOX"
mkdir "$CONTEXT_PATH/$FOLDER_CURRENTPROJECTS"
mkdir "$CONTEXT_PATH/$FOLDER_REFERENCE"
mkdir "$CONTEXT_PATH/$FOLDER_ARCHIVED"