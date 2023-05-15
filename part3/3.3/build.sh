#!/bin/sh

github_repo=$1
dockerhub_repo=$2

echo "cloning GitHub repo $1"
git clone https://github.com/$1.git

echo "building docker image ..."
docker build -t $dockerhub_repo

docker push $dockerhub_repo
