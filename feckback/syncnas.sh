#!/bin/sh
# Feckback: Quick Rsync wrapper to sync NAS and USB Mirror.

nohup rsync --archive /volume1 /volumeUSB1/usbshare > ./sync.log &
