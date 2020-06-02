#!/bin/bash

PROJECT_DATE=$(date '+%Y-%m-%d')
PROJECT_NAME=

source "$INCLUDE/pp-parse-create.sh"

if [ -z "$PROJECT_NAME" ]; then
  echo "Error: missing project name"
  usage_create
fi

mkdir "$CONTEXT/$FOLDER_CURRENTPROJECTS/$PROJECT_DATE - $PROJECT_NAME"

exit 0