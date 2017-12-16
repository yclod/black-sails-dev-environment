# -*- mode: ruby -*-
# vi: set ft=ruby :

vbox_box = "ubuntu/xenial64"

black_sails_datasource = "../black-sails-datasource/"
black_sails_ctp = "../black-sails-ctp/"

max_system_memory = 4096

Vagrant.configure("2") do |config|
  config.vm.define "datasource" do |datasource|
	datasource.vm.box = vbox_box
	datasource.vm.provider :virtualbox do |vb|
		vb.customize ["modifyvm", :id, "--memory", max_system_memory]
    end
	datasource.vm.synced_folder black_sails_datasource, "/home/ubuntu/black_sails_datasource"
	datasource.vm.synced_folder black_sails_ctp, "/home/ubuntu/black_sails_ctp"
	datasource.vm.synced_folder "thirdparty", "/home/ubuntu/thirdparty"
	datasource.vm.provision :shell, :inline => "sudo rm /etc/localtime && sudo ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime", run: "always"
	datasource.vm.provision "shell", path: "config.sh"
  end
end
