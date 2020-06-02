#!/bin/bash

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