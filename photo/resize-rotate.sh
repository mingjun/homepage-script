#!/bin/bash
DIR=small-2013

cd $DIR && (
    mogrify -resize 1024x768 *.JPG;
    mogrify -auto-orient *.JPG
)
