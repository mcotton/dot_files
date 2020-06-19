#!/bin/bash


if [ -e /home/mcotton/dev/personal/dot_files/rsyncjob.lock ]
then
  echo "Rsync job already running...exiting"
  exit
fi

touch /home/mcotton/dev/personal/dot_files/rsyncjob.lock


# backup of just ~/dev
# rsync -az --progress --stats --human-readable /home/mcotton/dev /mnt/md0/backup/mcotton/
# rsync -az --info=progress2 --stats --human-readable /home/mcotton/dev /home/mcotton/Storage
rsync -az --info=progress2 --stats --human-readable /home/mcotton/dev /mnt/WD_Green

rm /home/mcotton/dev/personal/dot_files/rsyncjob.lock
