#!/bin/bash

URL=$1
REPO_NAME=$(echo $URL | cut -d '/' -f 5 | rev | cut -d '.' -f 2 | rev | tr '[:upper:]' '[:lower:]')
echo "Provide dockerhub username:"
read USERNAME
echo "Provide dockerhub password:"
read -s PASSWORD
echo "$PASSWORD" | docker login -u $USERNAME --password-stdin
echo "URL is $URL"
echo "repos name is $REPO_NAME"
git clone $URL repo
docker build -t $USERNAME/$REPO_NAME $(pwd)/repo/.
docker push $USERNAME/$REPO_NAME
