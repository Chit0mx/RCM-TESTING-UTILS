#!/bin/bash

clear

RCMapp="Roland Cloud Manager"
RCMS="RCMservice"
RCM="Roland Cloud Manager"
RCMPM="RolandPermissionsManager"

#Set .ini route
file_path="/Users/chit0mx/.config/Roland Cloud/Cloud Manager.ini"

#Specify what to search in that file
search_string="2500="

#Closing all the related processes to RCM 

#RCM application
if pgrep $RCM >/dev/null; then
    kill $(pgrep $RCM) >/dev/null 2>&1
    echo -e "\033[1;32m$RCM was closed\033[0m"
else
    echo -e "\033[1;33m$RCM wasn't found or is already closed\033[0m"
fi

#RCM service
if pgrep $RCMS >/dev/null; then
    kill $(pgrep $RCMS) >/dev/null 2>&1
    echo -e "\033[1;32m$RCMS was closed\033[0m"
else
    echo -e "\033[1;33m$RCMS wasn't found or is already closed\033[0m"
fi

#RCM permission manager
if pgrep $RCMPM >/dev/null; then
    kill $(pgrep $RCMPM) >/dev/null 2>&1
    echo -e "\033[1;32m$RCMPM was closed"
else
    echo -e "\033[1;33m$RCMPM wasn't found or is already closed\033[0m"
fi

echo "All the process were closed"