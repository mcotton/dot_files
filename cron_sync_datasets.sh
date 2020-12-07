#!/bin/bash


rsync -av --no-perms --info=progress2 --stats  /mnt/WD_Green/datasets/ root@192.168.1.119:/mnt/user/datasets/
#rsync -av --no-perms --info=progress2 --stats  /mnt/md0/datasets/ /mnt/WD_Green/datasets
