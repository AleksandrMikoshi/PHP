#!/bin/bash

downloadURL="$4"                # Static url or command that can be used to return a dynamic url
appFileName="$5"                # "Google Chrome.app"
zip="app.zip"

cd /var/tmp/
curl -L $downloadURL > /var/tmp/$zip
tar -xZvf /var/tmp/$zip
rm -rf /Applications/$appFileName
mv /var/tmp/"$appFileName" /Applications

rm -rf /var/tmp/$zip