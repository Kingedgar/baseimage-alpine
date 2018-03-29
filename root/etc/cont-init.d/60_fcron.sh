#!/usr/bin/with-contenv bash

dockerize -no-overwrite -template /app/crontab.custom:/config/crontab.custom

touch /var/spool/fcron/app.orig
cat /config/crontab.custom > /var/spool/fcron/app.orig
