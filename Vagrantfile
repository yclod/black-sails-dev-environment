# -*- mode: ruby -*-
# vi: set ft=ruby :

vbox_box = "ubuntu/xenial64"

black_sails_datasource = "../black-sails-datasource/"
black_sails_ctp = "../black-sails-ctp/"

Vagrant.configure("2") do |config|
  config.vm.define "datasource" do |datasource|
	datasource.vm.box = vbox_box
	datasource.vm.synced_folder black_sails_datasource, "/home/ubuntu/black_sails_datasource"
	datasource.vm.synced_folder black_sails_ctp, "/home/ubuntu/black_sails_ctp"
	datasource.vm.synced_folder "thirdparty", "/home/ubuntu/thirdparty"
	datasource.vm.provision "shell", path: "config.sh"
  end
end
