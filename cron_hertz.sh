#!/bin/bash

rsync -avz -e "ssh -i ~/.ssh/digitalocean -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress mcotton@hertz.een.cloud:/home/mcotton/EE-hertz/tmp/* /home/mcotton/dev/een/EE-hertz/tmp/

#rsync -avz --progress /home/mcotton/dev/een/EE-hertz /home/mcotton/Storage/
