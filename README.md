# privnetf.local

privnetf.local is Jon's personal playground to get to grips with very basic beginner devops.

## Description

privnetf is essentially an apache server located within WSL, running a (currently)very simple single page website.

## Pre-reqs

Everything is so far hardcoded and migrated from onsite files, as such everything is already available on my Jon's local machine. For example;
DESTIN="/mnt/c/users/jon/g_drive/privnetf_backup/"
LOGPATH="/home/jon/LOGS/"
LOGFILE=backup_privnetf_$MONTH.log
LOG=$LOGPATH$LOGFILE
SRC=/var/www/privnetf/

[These variables are used in Support_Resources/backup_privnetf.sh]