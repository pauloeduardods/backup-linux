# Backup

Backup your linux desktop or server (read recommendations for server) using this shell script.

## Getting Started

You will need to clone this repository, run `chmod +x <file_name>.sh` and change (in the file) the paths.

In backup.sh change `backup_saveTo=` to the path you want to save your backup.

In RestoreBackup change `backup_local=` to the path of your backup, you will need to change `restore_local` if you are restoring another path location (default is root).

### Server recomendations

If you need to backup server, remove `--exclude=/var/log` from backup.sh, take care and look what are been skipped, if you need it, remove too.

*Read more in https://help.ubuntu.com/community/BackupYourSystem/TAR*

## Authors

* **Paulo Eduardo de Sordi Gomes** [GitHub Pages](https://pauloeduardods.github.io)
