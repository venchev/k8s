#!/bin/bash
echo Two VMs Ubuntu 22.04 LTS for kubernetes, are provisioning now.
sleep 10
echo Creating Snapshot !
vagrant snapshot save k8s-basic-tools-updated-ready-for-K8S-installation
echo
echo Snapshot was created !
echo
