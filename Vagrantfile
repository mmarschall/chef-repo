Vagrant.configure("2") do |config|
  config.vm.box = "opscode-ubuntu-14.04"
  config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box"
  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
  end

  #config.vm.provider "docker" do |d|
  #  d.image = "chef/ubuntu-14.04"
  #  d.has_ssh = true
  #  d.remains_running = true
  #end

  config.vm.provision :chef_client do |chef|
    chef.provisioning_path = "/etc/chef"
    chef.chef_server_url = "https://api.opscode.com/organizations/awo"
    chef.validation_key_path = ".chef/awo-validator.pem"
    chef.validation_client_name = "awo-validator"
    chef.node_name = "server"
  end
end 

