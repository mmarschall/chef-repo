def define_node(config, node_name, ip_address=nil, the_recipe=nil)
  config.vm.define node_name do |node|
    node.vm.hostname = node_name.to_s
    node.vm.network :private_network, ip: ip_address if ip_address     
    node.vm.provision :chef_client do |chef|
      chef.provisioning_path = "/etc/chef"
      chef.chef_server_url = "https://api.opscode.com/organizations/awo"
      chef.validation_key_path = ".chef/awo-validator.pem"
      chef.validation_client_name = "awo-validator"
      chef.node_name = node_name.to_s
      chef.add_recipe the_recipe if the_recipe
    end
  end
end

Vagrant.configure("2") do |config|
  config.vm.box = "opscode-ubuntu-14.04"
  config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box"
  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true

  #config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
  end

  define_node(config, :server, "192.168.0.100")
  
  #define_node(config, :ha1, "192.168.0.101", 'my_cookbook')
  #define_node(config, :ha2, "192.168.0.102", 'my_cookbook')
end 

