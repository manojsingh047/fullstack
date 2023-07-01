#!/bin/bash
SECONDS=0

cd $HOME/fullstack

msg() {
    echo -e "$1\n--------------------\n"
}

msg "Pulling from GitHub"
git pull

msg "Building docker image"
sudo docker build --tag server .

msg "Stopping Docker container"
sudo docker stop server
sudo docker rm server

msg "Starting Docker container"
nohup sudo docker run --name app --expose 8080 -p 8080:8080 server

msg "Pruning stale Docker images"
sudo docker image prune -f

duration=$SECONDS
echo
msg "Deploy finished in $(($duration % 60)) seconds."
msg "Press Enter to exit"
read