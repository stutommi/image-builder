#!/bin/bash

URL=$1
REPO_NAME=$(echo $URL | cut -d '/' -f 5 | rev | cut -d '.' -f 2 | rev | tr '[:upper:]' '[:lower:]')

echo "URL is $URL"
echo "repos name is $REPO_NAME"
git clone $URL repo
docker build -t stutommi/$REPO_NAME $(pwd)/repo/.
docker push stutommi/$REPO_NAME
