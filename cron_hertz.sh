#!/bin/bash

rsync -avz -e "ssh -i ~/.ssh/digitalocean -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --stats --info=progress2 mcotton@hertz.een.cloud:/home/mcotton/EE-hertz/tmp/*.db /home/mcotton/dev/een/EE-hertz/tmp/*.db

rsync -avz -e "ssh -i ~/.ssh/digitalocean -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --stats --info=progress2 mcotton@hertz.een.cloud:/home/mcotton/EE-hertz/tmp/images/ /home/mcotton/dev/een/EE-hertz/tmp/images/

rsync -avz -e "ssh -i ~/.ssh/digitalocean -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --stats --info=progress2 mcotton@hertz.een.cloud:/home/mcotton/EE-hertz2/tmp/*.db /home/mcotton/dev/een/EE-hertz2/tmp/*.db

rsync -avz -e "ssh -i ~/.ssh/digitalocean -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --stats --info=progress2 mcotton@hertz.een.cloud:/home/mcotton/EE-hertz2/tmp/images/ /home/mcotton/dev/een/EE-hertz2/tmp/images/

rsync -avz -e "ssh -i ~/.ssh/digitalocean -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --stats --info=progress2 mcotton@hertz.een.cloud:/home/mcotton/EE-hertz3/tmp/images/ /home/mcotton/dev/een/EE-hertz3/tmp/images/

rsync -av -e "ssh -i ~/.ssh/digitalocean -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --stats --info=progress2 mcotton@demo.een.cloud:/home/mcotton/dumpster/ /home/mcotton/dev/een/Hanwha-LPR
