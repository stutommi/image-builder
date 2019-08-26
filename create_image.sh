#!/bin/bash

URL=$1
REPO_NAME=$(echo $URL | cut -d '/' -f 5 | rev | cut -d '.' -f 2 | rev)

echo "url is $URL"
echo "repos name is $REPO_NAME"
git clone $URL test && cd test
# git clone $URL repo
