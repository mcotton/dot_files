#!/bin/bash


# backup of just ~/dev
rsync -az --progress --stats --human-readable /home/mcotton/dev /mnt/md0/backup/mcotton/
