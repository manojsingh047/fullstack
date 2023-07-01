#!/bin/bash
sshcmd="ssh -i /home/manojs/.ssh/id_rsa manojs@35.208.175.52"
$sshcmd screen -d -m /home/manojs/fullstack prod_deploy.sh