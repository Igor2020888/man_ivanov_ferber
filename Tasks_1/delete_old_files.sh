#!/bin/sh
PATH=/etc:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

path=$1
days=$2
echo "Полнуть путь удаляемых бэкапов" >> log.txt
find $path -type f -name "*.tar.gz" -mtime +$days >> log.txt
find $path -type f -name "*.tar.gz" -mtime +$days -delete

