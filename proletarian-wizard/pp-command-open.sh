#!/bin/bash

PROJECT_NAME=
PROJECT_ID=
EDITOR=

source "$INCLUDE/common-editors.sh"
source "$INCLUDE/pp-parse-open.sh"

if [ ! -z "$PROJECT_ID" ]; then
  INDEX=1
  IFS=$'\n' PROJECTS="`ls "$CONTEXT/$FOLDER_CURRENTPROJECTS"`"
  for PROJECT in $PROJECTS; do
    if [ $INDEX -eq $PROJECT_ID ]; then
      PROJECT_NAME="$PROJECT"
      echo "Opening project $PROJECT_ID: $PROJECT"
      break
    fi
    INDEX=$((INDEX + 1))
  done
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