#!/bin/bash

####
# Proletarian wizard - notes
####

SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
INCLUDE="$SCRIPTPATH/proletarian-wizard"

source "$INCLUDE/common-variables.sh"
source "$INCLUDE/n-usage.sh"
source "$INCLUDE/n-parse-command-line.sh"

if [ -z "$COMMAND" ]; then
  echo "Error: no command specified."
  usage_base
  exit -1
fi

case $COMMAND in
  create)
    source $INCLUDE/n-command-open.sh
  ;;
  list)
    source $INCLUDE/n-command-list.sh
  ;;
  create)
    source $INCLUDE/n-command-create.sh
  ;;
  show)
    source $INCLUDE/n-command-show.sh
  ;;
esac
