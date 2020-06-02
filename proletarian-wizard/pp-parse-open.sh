#!/bin/bash

while [[ $# -gt 0 ]]
do
  key="$1"
  shift

  case $key in
    --project|-p)
      PROJECT_NAME="$1"
      shift
    ;;
    --id|-i)
      PROJECT_ID="$1"
      shift
    ;;
    --with|-w)
      EDITOR="$1"
      shift
    ;;
    *)
        echo "Unknown parameter: $key"
      usage_open
      exit
    ;;
  esac
done