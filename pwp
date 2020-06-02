#!/bin/bash

####
# Proletarian wizard
####

SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
INCLUDE="$SCRIPTPATH/proletarian-wizard"

source "$INCLUDE/common-variables.sh"
source "$INCLUDE/pp-usage.sh"
source "$INCLUDE/pp-parse-command-line.sh"

if [ -z "$COMMAND" ]; then
  echo "Error: no command specified."
  usage_base
  exit -1
fi

if [ ! -d "$CONTEXT/$FOLDER_CURRENTPROJECT" ]; then
  echo "Error: current project folder does not exist"
  echo "Was looking for $FOLDER_CURRENTPROJECT"
  exit -1
fi

if [ "$COMMAND" = "list" ]; then
  source $INCLUDE/pp-command-list.sh
fi

if [ "$COMMAND" = "create" ]; then
  source $INCLUDE/pp-command-create.sh
fi