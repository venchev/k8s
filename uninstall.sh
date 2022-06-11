#!/bin/bash
echo
echo WARNING:  This script will remove your VM with KubeFlow and everything related. 
echo Are you sure, that you want this?
echo 
echo if Yes - the script will await 15 seconds, and you can press Ctrl-C to stop it.
echo
echo if you want to continue, just await 15 secs and it will start automatically. 
echo No undo is possible !!!
echo
echo Counting 15 seconds NOW.
sleep 15
echo
echo 15 seconds have passed. Starting removal of the VM resources and cleanup!
echo
vagrant destroy -f ; rm -rf .vagrant ; rm -rf .git ; vagrant global-status
echo
echo Done Successfully!
