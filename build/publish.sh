#!/bin/bash

WEBDIR='/opt/thebideo-frontend/'
BACKUPDIR='/opt/backup_thebideo-frontend/'

echo 'Cleaning up backup dir'
rm -rf $BACKUPDIR*
echo 'Backing up'
mv $WEBDIR/* $BACKUPDIR
echo 'Deploying'
cd ..
cp -r * $WEBDIR
echo 'Done!'