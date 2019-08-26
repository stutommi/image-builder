#!/bin/bash

URL=$1
REPO_NAME=$(echo $URL | cut -d '/' -f 5 | rev | cut -d '.' -f 2 | rev)

echo "url is $URL"
echo "repos name is $REPO_NAME"
git clone $URL test && cd test
echo "files in dir: $(ls -a)"
docker build -t stutommi/$REPO_NAME .
docker push stutommi/$REPO_NAME
# git clone $URL repo
