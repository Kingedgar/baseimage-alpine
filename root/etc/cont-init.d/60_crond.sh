#!/usr/bin/with-contenv bash

dockerize -no-overwrite -template /app/crontab.custom:/conf/crontab.custom

cat /conf/crontab.custom >> /var/spool/cron/crontabs/root
sed -i '/^$/d' /var/spool/cron/crontabs/root
