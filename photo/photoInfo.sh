#!/bin/bash

ls $1*.JPG |\
while read photoName
do
#    echo "parseing photo" $photoName
    identify -verbose $photoName | awk -f photoInfo2Json.awk
done
