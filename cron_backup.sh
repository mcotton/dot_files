#!/bin/bash

rsync -a --exclude /home/mcotton/Storage --exclude /home/mcotton/Storage/* --progress --stats --human-readable /home/mcotton /media/mcotton/Storage/backup/
