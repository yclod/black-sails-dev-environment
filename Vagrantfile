# -*- mode: ruby -*-
# vi: set ft=ruby :

# vbox_box = "precise64"
# vbox_url = "http://files.vagrantup.com/precise64.box"

black_sails_datasource = "../black-sails-datasource/"

Vagrant.configure("2") do |config|
  config.vm.define "datasource" do |datasource|
	datasource.vm.box = "hashicorp/precise64"
	datasource.vm.synced_folder black_sails_datasource, "/home/vagrant/black_sails_datasource"
  end
end
