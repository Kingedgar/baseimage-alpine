#!/usr/bin/with-contenv bash

dockerize -no-overwrite -template /app/crontab.tmp:/config/crontab.tmp
fcrontab < /config/crontab.tmp
