#!/bin/bash

DIRECTORY=~/radio/
STATION_NAME="RadioX"
STATION_URL="http://streams2.as39202.net/RadioXUK"
DATETAG=`date +"%d%m%Y-%H%M"`
DATETAG_OLD=`date -d "-10 days" +"%d%m%Y"`

# make the ~/radio/ directory. Don't error if it already exists
echo ${DIRECTORY} | xargs mkdir -p

# quit any existing instances of this stream recording
echo "${STATION_NAME}Stream quit" | xargs screen -XS 

# create a detached screen and send the stream record command
screen -dmS ${STATION_NAME}Stream mplayer ${STATION_URL} -dumpstream -dumpfile ${DIRECTORY}${STATION_NAME}_latest.mp3

# quit recording the stream at 10pm (arbitrary i know)
echo "echo \"${STATION_NAME}Stream quit\" | xargs screen -XS" | at 22:00

# rename the latest recording with the date and time it started
echo "mv ${DIRECTORY}${STATION_NAME}_latest.mp3 ${DIRECTORY}${STATION_NAME}_${DATETAG}.mp3" | at 22:30

# remove a ten day old recording
echo "rm -r ${DIRECTORY}${STATION_NAME}_${DATETAG_OLD}*" | at 23:00
