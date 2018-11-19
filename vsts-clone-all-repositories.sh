#!/bin/bash

while [[ $# -gt 0 ]]
do
    key="$1"

    case $key in
        -p|--project)
            value="$2"
            PROJECT="$value"
            shift
            shift
        ;;
        -i|--instance)
            value="$2"
            INSTANCE="$value"
            shift
            shift
        ;;
        *)
            echo "Unknown parameter: $key"
            shift
        ;;
    esac
done

PROJECT_OPTION=""
if [ -n "$PROJECT" ]; then
    PROJECT_OPTION=" --project ${PROJECT} "
    echo "Selecting project $PROJECT_OPTION"
fi

INSTANCE_OPTION=""
if [ -n "$INSTANCE" ]; then
    INSTANCE_OPTION="  "
    echo "Selecting instance $INSTANCE_OPTION"
fi

for REPOSITORY_URL in `vsts code repo list --instance "${INSTANCE}" --project "${PROJECT}" \
    --query "[].additionalProperties.sshUrl" \
    --output tsv`; do
    git clone $REPOSITORY_URL
done 