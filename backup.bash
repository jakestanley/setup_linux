#!/usr/bin/env bash

# defaults
TARGET_USER=jake
BACKUP_DIR_ROOT=/var/media/Backups

# arguments
SERVER_ADDR=$1

# fail if any command exits with non-zero status
set -e

# print usage to console
function usage() {
    echo -e "\nUsage: \n\t$0 <address.com>";
    echo -e "\tOverride backup directory with BACKUP_DIR_ROOT";
    echo -e "\tOverride login user with TARGET_USER";
}

if [[ "$SERVER_ADDR" == "" ]]; then
    echo -e "SERVER_ADDR was missing."
    usage
    exit 1;
fi

# store the date in case we need it for anything else
backup_date=$(date +"%d-%m-%y-%H-%M")

# make the server backup directory if it doesn't exist
mkdir -p $BACKUP_DIR_ROOT/${SERVER_ADDR}

# using rsync, we'll get the deltas only for efficiency
rsync -avF ${TARGET_USER}@${SERVER_ADDR}:~/ ${BACKUP_DIR_ROOT}/${SERVER_ADDR}

# directory snapshot
# TODO backup viewer - shows structure and dates?
# tree >> $BACKUP_DIR_ROOT/${SERVER_ADDR} # ???

# now we'll take an incremental backup
tar -zcf $BACKUP_DIR_ROOT/${SERVER_ADDR}_${backup_date}.tar.gz ${BACKUP_DIR_ROOT}/${SERVER_ADDR}
