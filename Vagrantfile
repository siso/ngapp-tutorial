# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/ubuntu-14.04"

  config.vm.network "forwarded_port", guest: 8000, host: 20080
  config.vm.network "forwarded_port", guest: 22, host: 20022

  # config.vm.provision "docker", images: ["dsgrid/selenium-hub", "dsgrid/firefox-node"]

  config.vm.provision "ansible" do |ansible|
    ansible.sudo = true
    ansible.inventory_path = "ansible/inventory/vagrant"
    ansible.playbook = "ansible/main.yml"
    ansible.verbose = "v"
    ansible.limit = "development"
  end

end
