#!/bin/bash


while [[ $# -gt 0 ]]
do
  key="$1"
  shift

  case $key in
      -c|--context)
        CONTEXT="$1"
        shift
      ;;
      -p|--project)
        PROJECT_NAME="$1"
        shift
      ;;
      -i|--project-id)
        PROJECT_ID="$1"
        shift
      ;;
      list|l)
          COMMAND="list"
          break
      ;;
      create|c)
          COMMAND="create"
          break
      ;;
      archive|a)
          COMMAND="archive"
          break
      ;;
      open|o)
          COMMAND="open"
          break
      ;;
      show|s)
          COMMAND="show"
          break
      ;;
      *)
          echo "Unknown parameter: $key"
          usage_base
          exit
      ;;
  esac
done