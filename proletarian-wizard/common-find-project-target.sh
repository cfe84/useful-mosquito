#!/bin/bash

if [ ! -z "$PROJECT_ID" ]; then
  source "$INCLUDE/common-find-project-name-from-id.sh"
fi

if [ -z "$PROJECT_NAME" ]; then
  echo "Error: No project specified"
  usage_show
  exit -1
fi

PROJECT_PATH="$CONTEXT/$FOLDER_CURRENTPROJECTS/$PROJECT_NAME"

if [ ! -e "$PROJECT_PATH" ]; then # path does not exist
  echo "Error: not found - $PROJECT_PATH"
  usage_show
  exit -1
fi

if [ ! -d "$PROJECT_PATH" ]; then # project is not a folder
  echo "Error: $PROJECT_PATH is not a folder"
  usage_show
  exit -1
fi
