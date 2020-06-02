#!/bin/bash

while [[ $# -gt 0 ]]
do
    key="$1"
    shift

    case $key in
        --name|-n)
            PROJECT_NAME="$1"
            shift
        ;;
        *)
            echo "Unknown parameter: $key"
            usage_create
            exit
        ;;
    esac
done