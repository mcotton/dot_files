#!/bin/bash

# rsync -az --exclude Storage --exclude Storage/* --exclude .cache --exclude .config  --exclude .dbus --progress --stats --human-readable /home/mcotton /mnt/md0/backup/

rsync -az --exclude Storage --exclude Storage/* --exclude .cache --exclude .config  --exclude .dbus --info=progress2 --stats --human-readable /home/mcotton /mnt/WD_Green
