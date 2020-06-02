#!/bin/bash

PWC_USAGE="$PW_USAGE"

usage_base() {
  echo "$PWC_USAGE [init|i]"
  exit 1
}

usage_init() {
  echo "$PWC_USAGE init/i --path/-p PATH [--create/-c]"
  exit 1
}