#!/bin/bash

restore_local="/"
backup_local="pathToFile.tar.gz"

sleep 1

echo "Starting restore: $restore_local from $backup_local"

sleep 1

sudo tar -xvpzf $backup_local -C $restore_local --numeric-owner

echo "Done"
