#!/bin/bash


usage_base() {
  echo "Usage: `basename "$0"` [init|i]"
  exit 1
}

usage_init() {
  echo "Usage: `basename "$0"` init/i --path/-p PATH [--create/-c]"
  exit 1
}