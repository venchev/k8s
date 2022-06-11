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
end

 config.vm.provision "shell", inline: <<-SHELL
     sudo apt-get update && sudo apt-get upgrade -y
     sudo apt-get install -y vim nano mc lynx git nmap wget curl net-tools htop
 SHELL


config.vm.define "slave" do |vb|
  vb.vm.box = IMAGE_NAME
  vb.vm.hostname = "k8s-slave"
end

 config.vm.provision "shell", inline: <<-SHELL
     sudo apt-get update && sudo apt-get upgrade -y
     sudo apt-get install -y vim nano mc lynx git nmap wget curl net-tools htop
 SHELL

end
