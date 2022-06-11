# -*- mode: ruby -*-
# vi: set ft=ruby :

IMAGE_NAME = "mrysbekov/ubuntu2204"

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
     vb.memory = "8192"
     vb.cpus = 8
  end


config.vm.define "master" do |vb|
  vb.vm.box = IMAGE_NAME
  vb.vm.hostname = "k8s-master"
  vb.vm.network "public_network", bridge: "enp0s31f6", ip: "192.168.88.110"

 config.vm.provision "shell", inline: <<-SHELL
     eval `route -n | awk '{ if ($8 ==\"eth0\" && $2 != \"0.0.0.0\") print \"route del default gw \" $2; }'`"
     route add default gw 192.168.88.1
     sudo apt-get update && sudo apt-get upgrade -y
     sudo apt-get install -y vim nano mc lynx git nmap wget curl net-tools htop
 SHELL


config.vm.define "slave" do |vb|
  vb.vm.box = IMAGE_NAME
  vb.vm.hostname = "k8s-slave"
  vb.vm.network "public_network", bridge: "enp0s31f6", ip: "192.168.88.120"
end

 config.vm.provision "shell", inline: <<-SHELL
     eval `route -n | awk '{ if ($8 ==\"eth0\" && $2 != \"0.0.0.0\") print \"route del default gw \" $2; }'`"
     route add default gw 192.168.88.1
     sudo apt-get update && sudo apt-get upgrade -y
     sudo apt-get install -y vim nano mc lynx git nmap wget curl net-tools htop
 SHELL

 end
end
