#!/bin/bash

now=`date +%Y-%m-%d.%H:%M:%S`
zip -qr $now.zip /var/www
rclone copy $now.zip b2:rclone-backup-[unique name]
rm $now.zip