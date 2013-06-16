#!/bin/bash

PHOTO_DIR=/hub/share/wenxin

LIST_FILE=photoInfo.list
SQL_FILE=photoInfo.sql

AWK=gawk

: > $LIST_FILE

find $PHOTO_DIR -name "*.JPG" |\
while read photoName
do
    echo "parsing photo" $photoName
    identify -format "%f %[EXIF:DateTime] %wx%h" $photoName >> $LIST_FILE
done

$AWK -f list2sql.awk $LIST_FILE > $SQL_FILE
