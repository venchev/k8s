# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "alvistack/kubernetes-1.24"
  config.vm.hostname = "k8s-master"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "8192"
    vb.cpus = 8
    vb.name = "K8S-master"
end

 config.vm.provision "shell", inline: <<-SHELL
     sudo apt-get update && sudo apt-get upgrade -y
     sudo apt-get install -y vim nano mc lynx git nmap wget curl net-tools htop snapd snap
 SHELL

end
