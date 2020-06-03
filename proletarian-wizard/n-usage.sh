#!/bin/bash

PWN_USAGE="$PW_USAGE [--context|-c CONTEXT_PATH] (--project PROJECT_NAME | --project-id PROJECT_ID)"

usage_base() {
  echo "Proletarian Wizard Notes"
    echo "$PWN_USAGE [list | open | create | archive]"
    exit 1
}

usage_create() {
  DATE=$(date '+%Y-%m-%d')
  echo "$PWN_USAGE create --date $DATE --name|-n NOTE_NAME [--no-edit] [--template-path|-T TEMPLATE_FILE] [--template|-t TEMPLATE_NAME]"
  echo -e "--no-edit\tdoes not open the new note"
  echo -e "--template-path\tspecifies a template."
  echo -e "--template\tspecifcy a template file name within the .pw/templates folder"
  echo "Note that by default PW will use the 'default.md' file from its templates folder"
  exit 1
}

usage_open() {
  echo "$PWN_USAGE open [--project|-p PROJECT_NAME] [--id|-i PROJECT_ID] [--with|-w COMMAND]"
}

usage_show() {
  echo "$PWN_USAGE show [--project|-p PROJECT_NAME] [--id|-i PROJECT_ID]"
}
