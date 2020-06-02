#!/bin/bash

usage_base() {
    echo "Usage: `basename "$0"` [--context/-c] [list | open | create | archive]"
    exit 1
}

usage_create() {
  DATE=$(date '+%Y-%m-%d')
  echo "Usage: `basename "$0"` [--context/-c] create --date $DATE --name PROJECT_NAME"
  exit 1
}
