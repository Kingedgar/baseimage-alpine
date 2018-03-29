#!/usr/bin/with-contenv bash

dockerize -template /app/crontab.init:/var/spool/fcron
dockerize -no-overwrite -template /app/crontab.append:/config/crontab.append

cat /config/crontab.append >> /var/spool/fcron

chown root:fcron /var/spool/fcron
chmod 644 /var/spool/fcron

