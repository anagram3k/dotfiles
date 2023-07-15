#!/bin/sh
#
B="/disk2/luis/Backup"

find -maxdepth 1 -type l -exec ls -la {} \; | awk '{print $9 " " $10 " " $11}' | column -t >> $B/symlinks_home.txt

tree -d -L 2 /opt >> $B/opt_tree.txt 

tree -d -L 3 /disk2/luis >> $B/disk2_tree.txt 


# borg create /run/media/luis/backup/borg_backup::{now:%Y-%m-%d} ~ --stats -C zlib,6 --one-file-system --exclude '/home/luis/Dropbox' --exclude '/home/luis/.cache' --exclude-caches 
