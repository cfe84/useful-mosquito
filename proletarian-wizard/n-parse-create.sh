#!/bin/bash

while [[ $# -gt 0 ]]
do
    key="$1"
    shift

    case $key in
        --date|-d)
            NOTE_DATE="$1"
            shift
        ;;

        --name|-n)
            NOTE_NAME="$1"
            shift
        ;;

        --no-edit)
            NOTE_EDIT=false
        ;;

        --template-file|-T)
            TEMPLATE_FILE="$1"
            shift
        ;;

        --template|-t)
            TEMPLATE_NAME="$1"
            shift
        ;;
        *)
            echo "Unknown parameter: $key"
            usage_create
            exit
        ;;
    esac
done