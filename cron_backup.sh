#!/bin/bash

rsync -a --exclude Storage --exclude Storage/* --exclude .cache --exclude .config  --exclude .dbus --progress --stats --human-readable /home/mcotton /mnt/Storage/backup/
