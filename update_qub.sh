#!/bin/bash
# Amateur-grade Rsync wrapper

driveName="usb1"
mirrorDir="my_briefcase"

if [ "$1" = "-h" ]; then
    echo "Using rsync FROM local system to update attached usb's files."
    sleep 2
    rsync -truv "/home/$USER/$mirrorDir" "/media/$USER/$driveName/$mirrorDir"
elif [ "$1" = "-t" ]; then
    echo "Using rsync FROM memory stick to update local files."
    sleep 2
    rsync -truv "/media/$USER/$driveName/$mirrorDir/" "/home/$USER/$mirrorDir"
else
    echo -e "-h HITHER: from local system to memory stick\n
-t THITHER: from memory stick to local system\n"
    exit 1
fi
