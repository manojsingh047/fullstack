#!/bin/bash
sshcmd="ssh -t -i /home/manojs/.ssh/id_rsa manojs@35.208.175.52"
$sshcmd screen -S "deployment" sh /home/manojs/fullstack prod_deploy.sh