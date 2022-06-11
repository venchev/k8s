#!/bin/bash
echo
echo WARNING:  This script will remove your VM with Kubernetes and everything. Are you sure, that you want this?
echo 
echo if Yes - the script will await 10 seconds, and you can press Ctrl-C to stop it.
echo
echo if you want to continue, just await 10 secs and it will start automatically the REMOVAL process. No undo is possible !!!
echo
echo Counting 10 seconds NOW.
sleep 10
echo
echo 10 seconds have passed. Starting removal of the VM resources and cleanup!
echo
vagrant destroy -f ; rm -rf .vagrant ; rm -rf .git ; vagrant global-status
echo
echo Done Successfully!
