#!/bin/bash

IFS=$'\n' PROJECTS=`ls "$CONTEXT/$FOLDER_CURRENTPROJECTS"`
INDEX=1
for PROJECT in $PROJECTS; do
  echo -e "$INDEX\t$PROJECT"
  INDEX=$((INDEX + 1))
done
exit 0