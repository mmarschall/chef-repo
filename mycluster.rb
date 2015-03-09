require 'chef/provisioning'

with_driver 'vagrant'
with_machine_options :vagrant_options => { 'vm.box' => 'opscode-ubuntu-14.04' }

machine 'web01' do
  role 'web_server'
end