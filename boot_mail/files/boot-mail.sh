#!/bin/sh

HOSTNAME=`hostname`
MAIL_FROM=""
MAIL_TO=""

echo "System is up and running again" | mail -s "Device has started" -aFrom:"$HOSTNAME<$MAIL_FROM>" $MAIL_TO

