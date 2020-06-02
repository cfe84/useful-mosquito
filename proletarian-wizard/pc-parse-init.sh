#!/bin/bash

while [[ $# -gt 0 ]]
do
    key="$1"
    shift

    case $key in
        --path|-p)
            CONTEXT_PATH="$1"
            shift
        ;;
        --create|-c)
            CREATE=true
        ;;
        *)
            echo "Unknown parameter: $key"
            usage_init
            exit
        ;;
    esac
done