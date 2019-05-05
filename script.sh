#!/bin/bash

source ~/rclone-backup/.env
now=`date +%Y-%m-%d.%H:%M:%S`
zip -qr $now.zip /var/www
rclone copy $now.zip b2:$B2_BUCKET_NAME
rm $now.zip