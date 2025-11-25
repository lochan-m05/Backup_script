#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Usage : Backup.sh <Scource_dir> <Target_dir>"
    echo "Please try again ."
    exit 1
fi

if ! command -v rsync > /dev/null 2>&1
then
    echo "This  script requires rsync to be installed."
    echo "Please use your distribution's package manager to install"
    exit 2
fi

current_date=$(date %Y-%m-%d)

rsync_option="-avb --backup-dir $2/$current_date --delete --dry-run" #remove dry run in prduction unit 
$(which rsync) $rsync_option $1 $2/current >> backup_$current_date.log



