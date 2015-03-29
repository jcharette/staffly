#!/bin/sh

if [ -z $1 ]; then
        echo "error, must specify revision value"
        exit
fi

echo "Pushing as revision $1"

aws deploy push \
        --application-name Staffly_WebServer \
        --description "Staffly WebServer" \
        --ignore-hidden-files \
        --description "rev $1" \
        --s3-location s3://stafflydeploy/WebServer.zip \
        --source .
