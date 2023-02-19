#!/bin/bash
#find backups older than 30 days and delete them.
find "/backupfolder" -type f -mtime +30 -exec rm {} \;

#compress the folder with foldername & date and take backup
filename= "backup_`date +%d`_`date +%m`_`date +%Y`.tar";

#tar = tape archive tool for compression
tar -cvf /backupfolder/backup.tar /home/user/Desktop/automatedbackup

#go to the backup folder location
cd /backupfolder

#list the contents of /backupfolder
ls -la

#show the size of the folder
du -sh