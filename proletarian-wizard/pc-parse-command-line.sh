#!/bin/bash


while [[ $# -gt 0 ]]
do
    key="$1"
    shift

    case $key in
        init|i)
            COMMAND="init"
            break
        ;;
        *)
            echo "Unknown parameter: $key"
            usage_base
            exit
        ;;
    esac
done