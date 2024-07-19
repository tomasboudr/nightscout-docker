#!/bin/bash

DATE=`date +"%Y-%m-%d"`

docker exec -d nightscout_mongo mongodump
sleep 5

cd ./mongodump

zip -r ${DATE}.zip .

mkdir -p ~/nightscout-backups/
mv ${DATE}.zip ~/nightscout-backups/
rm -rf *