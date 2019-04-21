#!/bin/bash

CLUB_URL=${CLUB_URL}
envsubst 'CLUB_URL' < /etc/nginx/conf.d/mysite.template > /etc/nginx/conf.d/default.conf
cat /etc/nginx/conf.d/default.conf

if [ $# = 0 ]
then
    exec nginx -g 'daemon off;'
else
    exec "$@"
fi