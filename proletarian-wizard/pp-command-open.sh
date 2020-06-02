#!/bin/bash

PROJECT_NAME=

source "$INCLUDE/pp-parse-open.sh"

if [ -z "$PROJECT_NAME" ]; then
  echo "Error: missing project name"
  usage_open
fi

exit 0