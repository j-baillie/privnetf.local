#!/bin/bash

##########################################################################
#                                                                        #
# Author - Jon                                                           #
# Purpose - Basic backup script.                                         #
# Further - backups all files found in whatever direcotory is given      #
# under 'SRC' to google drive. g_drive is a synced folder with           #
# google drive. Very basic, nice skeleton                                #
#                                                                        #
##########################################################################


#Variables
DATE=$(date '+%Y%m%d')
MONTH=$(date +%Y-%m)
TS=$(date +"%Y-%m-%d %H:%M:%S")
DESTIN="/mnt/c/users/jon/g_drive/privnetf_backup/"
LOGPATH="/home/jon/LOGS/"
LOGFILE=backup_privnetf_$MONTH.log
LOG=$LOGPATH$LOGFILE
SRC=/var/www/privnetf/

# if logfile doesn't exist, create and write first line
if [ ! -f $LOG ]
then
        touch $LOG
        echo "$TS - Start of log." > $LOG
fi


## main

echo "$TS - Backup process started" >> $LOG
#if dest directory doesn't exist, create
if [ ! -d $DESTIN$DATE ]
then
        mkdir $DESTIN$DATE
        echo "$TS - $DESTIN$DATE created." >> $LOG
fi
echo "$TS - The following files will be backed up to $DESTIN$DATE:" >> $LOG
echo $(ls $SRC) >> $LOG

#actual copy command. Wildcard under SRC to newly created dir
cp $SRC* $DESTIN$DATE/

echo "$TS - Backup process ended." >> $LOG

#EOF