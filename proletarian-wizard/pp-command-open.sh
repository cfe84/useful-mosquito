#!/bin/bash

PROJECT_NAME=
PROJECT_ID=
EDITOR=

source "$INCLUDE/common-editors.sh"
source "$INCLUDE/pp-parse-open.sh"

if [ ! -z "$PROJECT_ID" ]; then
  source "$INCLUDE/common-find-project-name-from-id.sh"
fi

if [ -z "$PROJECT_NAME" ]; then # Use default current projects
  PROJECT_PATH="$CONTEXT/$FOLDER_CURRENTPROJECTS"
else
  PROJECT_PATH="$CONTEXT/$FOLDER_CURRENTPROJECTS/$PROJECT_NAME"
fi

if [ ! -e "$PROJECT_PATH" ]; then # path does not exist
  echo "Error: not found - $PROJECT_PATH"
  usage_open
  exit -1
fi

if [ -z "$EDITOR" ]; then
  if [ -d "$PROJECT_NAME" ]; then
    EDITOR="$FOLDER_EDITOR"
  else
    EDITOR="$FILE_EDITOR"
  fi
fi

$EDITOR "$PROJECT_PATH"

exit 0