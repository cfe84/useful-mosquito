#!/bin/bash

PROJECT_NAME=
PROJECT_ID=

source "$INCLUDE/common-editors.sh"
source "$INCLUDE/p-parse-show.sh"
source "$INCLUDE/common-find-project-target.sh"

IFS=$'\n' PROJECTS=`ls "$PROJECT_PATH"`
INDEX=1
for PROJECT in $PROJECTS; do
  echo -e "$INDEX\t$PROJECT"
  INDEX=$((INDEX + 1))
done
exit 0