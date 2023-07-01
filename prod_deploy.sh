#!/bin/bash
SECONDS=0

cd $HOME/fullstack

msg() {
    echo -e "$1\n--------------------\n"
}

msg "Stopping app"
sudo sudo pkill -f node

msg "Pulling from GitHub"
git pull

msg "Starting server"
nohup sudo npm run deploy &

duration=$SECONDS
echo
msg "Deploy finished in $(($duration % 60)) seconds."
msg "Press Enter to exit"
read