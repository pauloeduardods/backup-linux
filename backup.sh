#!/bin/bash

backup_files="/"
backup_saveTo="/media/paulo/PenDrive/backupLinux"

day=$(date +%d-%m-%y)
hostname=$(hostname-s)

file="$hostname-$day.tar.gz"
file_home="HOME-$file"

sleep 1

echo "Starting backup: $backup_files to $backup_saveTo/$file"

sleep 1

sudo tar -zcpvf $backup_saveTo/$file --exclude=/$file --exclude=/var/log --exclude=/home/*/.gvfs --exclude=/home/*/.cache --exclude=/home/*/.local/share/Trash --one-file-system $backup_files

sleep 5

echo "Starting backup: /home to $backup_saveTo/$file_home"

sleep 1

sudo tar -zcpvf $backup_saveTo/$file_home --exclude=/home/*/.gvfs --exclude=/home/*/.cache --exclude=/home/*/.local/share/Trash --one-file-system /home/

sleep 1

echo "Done"

ls -lh $backup_saveTo

