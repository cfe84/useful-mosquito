#!/bin/bash


while [[ $# -gt 0 ]]
do
    key="$1"
    shift

    case $key in
        -c|--context)
            CONTEXT="$1"
            shift
        ;;
        list|l)
            COMMAND="list"
            break
        ;;
        create|c)
            COMMAND="create"
            break
        ;;
        archive|a)
            COMMAND="archive"
            break
        ;;
        *)
            echo "Unknown parameter: $key"
            usage_base
            exit
        ;;
    esac
done