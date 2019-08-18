#!/bin/bash
VAR=$(cat /opt/php-7.3/php-fpm.d/*.conf  | grep open_basedir| awk -F"= " '{print $2}' | tr : '\n'  | sort | uniq )

cp -f docker-compose.base docker-compose.yml

while IFS= read -r line
do
    echo "           - $line:$line" >> docker-compose.yml
done <<< "$VAR"


