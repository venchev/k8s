#!/bin/bash
echo creation of Ubuntu 22.04 with Kubernetes 1.24
vagrant up
sleep 10
echo Creating Snapshot !
vagrant snapshot save k8s-basic-tools-updated-ready-for-K8S-installation
echo
echo Snapshot was created !
echo
