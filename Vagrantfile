#
Vagrant.configure("2") do |config|
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end
  
  config.vm.box = "ubuntu-14.04"
  config.vm.box_url = "https://github.com/jose-lpa/packer-ubuntu_14.04/releases/download/v2.0/ubuntu-14.04.box"

  config.vm.network :private_network, ip: "192.168.0.42"

  config.vm.synced_folder "/jv-ration/projects/cs/devbox/", "/host"

  config.vm.provision :shell, :inline => "/vagrant/config.vm.provision.sh | tee /vagrant/provision.log"


end