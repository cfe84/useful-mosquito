#!/bin/bash

PWP_USAGE="$PW_USAGE [--context|-c CONTEXT_PATH]"

usage_base() {
    echo "$PWP_USAGE [list | open | create | archive]"
    exit 1
}

usage_create() {
  DATE=$(date '+%Y-%m-%d')
  echo "$PWP_USAGE create --date $DATE --project|-p PROJECT_NAME"
  exit 1
}

usage_open() {
  echo "$PWP_USAGE open [--project|-p PROJECT_NAME] [--id|-i PROJECT_ID] [--with|-w COMMAND]"
}

usage_show() {
  echo "$PWP_USAGE show [--project|-p PROJECT_NAME] [--id|-i PROJECT_ID]"
}
