# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # Default web server like Apache
  config.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true

  # Python SimpleHTTPServer
  config.vm.network :forwarded_port, guest: 8000, host: 8000, auto_correct: true

  # Dexy
  config.vm.network :forwarded_port, guest: 8085, host: 8085, auto_correct: true

  config.vm.network :private_network, ip: "192.168.56.101"

  # Disable the default synced folder on /vagrant
  config.vm.synced_folder ".", "/vagrant", disabled: true

  # Add projects folder, this is where your projects will live
  config.vm.synced_folder "srv/projects", "/srv/projects"


  config.vm.provider :virtualbox do |vb|
    # Add some extra memory
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end
end