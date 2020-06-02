#!/bin/bash

if [ ! -z "$PW_FOLDER_EDITOR" ]; then
  FOLDER_EDITOR="$PW_FOLDER_EDITOR"
elif [ -z "`which xdg-open`" ]; then
  FOLDER_EDITOR="open"
else
  FOLDER_EDITOR="xdg-open"
fi

if [ ! -z "$PW_FILE_EDITOR" ]; then
  FILE_EDITOR="$PW_FILE_EDITOR"
elif [ -z "`which xdg-open`" ]; then
  FILE_EDITOR="open"
else
  FILE_EDITOR="xdg-open"
fi