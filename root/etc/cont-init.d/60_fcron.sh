#!/usr/bin/with-contenv bash

dockerize -no-overwrite -template /app/crontab.custom:/conf/crontab.custom

touch /var/spool/fcron/root.orig
cat /conf/crontab.custom > /var/spool/fcron/root.orig

usermod -a -G fcron root
