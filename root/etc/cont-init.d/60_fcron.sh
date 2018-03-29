#!/usr/bin/with-contenv bash

dockerize -no-overwrite -template /app/crontab.append:/config/crontab.append

dockerize -template /conf/crontab:/var/spool/fcron
cat /config/crontab.append >> /var/spool/fcron

chown root:fcron /var/spool/fcron
chmod 644 /var/spool/fcron

