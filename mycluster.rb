require 'chef/provisioning'

with_driver 'vagrant'
with_machine_options :vagrant_options => { 'vm.box' => 'opscode-ubuntu-16.04' }

machine 'web01' do
  recipe 'apt'
  recipe 'nginx'
end
