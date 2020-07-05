#!/bin/bash

function checkFatal {
    [ "$?" -ne "0" ] && echo "$@"
}

if ! source "${HOME}/.config/feckback.conf"; then
    echo "Couldn't read config file. Exiting."
    exit 1
fi

excludeText="${HOME}/.config/feckback.exclude"

if [ ! -e "$excludeText" ]; then
    noExclude="1"
fi

: ${toBackup:?"Fatal: Backup source unset."}
: ${destPath:?"Fatal: Backup destination path unset."}
: ${destHost:?"Fatal: Backup destination host unset."}
: ${localDest:?"Fatal: Local destination path unset."}

backupFile="$( hostname )-${USER}.tar.gz"

# Begin main execution... or interpretation?

echo -e "Feckback begins.\nSrc: $toBackup."
echo "Excluding: $excludeDirs"
echo "Destination Host: $destHost"
echo "Destination Path: $destPath"
echo "Backup File: $backupFile"
echo "Local Destination: $localDest"

echo "Stage 1: Connect to destination and create destination directory, if necessary."
ssh "$destHost" mkdir -pv "$destPath"
checkFatal "connecting to dest. host or creating dest. directory"

echo "Stage 2: Creating the backup in /$loaclDest/$backupName"
if [ "$noExclude" = 1 ]; then
    tar -czf "/$localDest/$backupFile" "$toBackup"
    checkFatal "creating local backup archive"
else
    tar -czf "/$localDest/$backupFile" -X "$excludeText" "$toBackup"
    checkFatal "creating local backup archive"
fi

echo "Stage 3: Copy backup to destination host."
echo "TBC."
