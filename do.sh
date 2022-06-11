#!/bin/bash
echo creation of Ubuntu 22.04 with Kubernetes 1.24
vagrant up
sleep 10
echo Creating Snapshot !
vagrant snapshot save k8s-updated
echo
echo Snapshot was created !
echo
vagrant global-status
echo
echo Have a nice work!
