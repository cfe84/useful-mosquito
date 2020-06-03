#!/bin/bash

NOTE_DATE=$(date '+%Y-%m-%d')
NOTE_NAME="$(date '+%H-%M')-note"
NOTE_EDIT=true
TEMPLATE_FILE=
TEMPLATE_NAME=

source "$INCLUDE/n-parse-create.sh"
source "$INCLUDE/common-find-project-target.sh"
source "$INCLUDE/common-editors.sh"

NOTE_PATH="$PROJECT_PATH/$NOTE_DATE-$NOTE_NAME.md"

if [ -e "$NOTE_PATH" ]; then
  echo "Error: Note already exists: $NOTE_PATH"
  usage_create
  exit -1
fi

# Load template from name
if [ ! -z "$TEMPLATE_NAME" ]; then
  TEMPLATE_FILE="$CONTEXT/$FOLDER_TEMPLATES/$TEMPLATE_NAME.md"
fi

# Load default template if it exists
if [ -z "$TEMPLATE_FILE" ] && [ -f "$CONTEXT/$FOLDER_TEMPLATES/default.md" ]; then
  TEMPLATE_FILE="$CONTEXT/$FOLDER_TEMPLATES/default.md"
fi

if [ ! -z "$TEMPLATE_FILE" ] && [ ! -f "$TEMPLATE_FILE" ]; then
  echo "Error: template not found $TEMPLATE_FILE"
  usage_create
  exit -1
fi

if [ -z "$TEMPLATE_FILE" ]; then
  touch "$NOTE_PATH"
else
  echo "Touch $TEMPLATE_FILE into $NOTE_PATH"
  eval "cat <<EOF
$(<$TEMPLATE_FILE)
EOF
"  > $NOTE_PATH
fi

if $NOTE_EDIT; then
  $FILE_EDITOR "$NOTE_PATH"
fi

exit 0