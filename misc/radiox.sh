#!/bin/bash

DIRECTORY="~/radio/"
STATION_NAME="RadioX"
STATION_URL="http://streams2.as39202.net/RadioXUK"
DATETAG=`date +"%d%m%Y-%H%M"`
FILEFULLPATH="${DIRECTORY}${STATION_NAME}_${DATETAG}.mp3"

echo ${DIRECTORY} | xargs mkdir
echo "${STATION_NAME}Stream quit" | xargs screen -XS 
echo ${FILEFULLPATH} | xargs -t screen -dmS ${STATION_NAME}Stream mplayer ${STATION_URL} -dumpstream -dumpfile
echo done
