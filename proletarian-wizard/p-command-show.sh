#!/bin/bash

PROJECT_NAME=
PROJECT_ID=

source "$INCLUDE/common-editors.sh"
source "$INCLUDE/p-parse-show.sh"

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

IFS=$'\n' PROJECTS=`ls "$PROJECT_PATH"`
INDEX=1
for PROJECT in $PROJECTS; do
  echo -e "$INDEX\t$PROJECT"
  INDEX=$((INDEX + 1))
done
exit 0