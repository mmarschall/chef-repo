require 'chef/provisioning'

with_driver 'vagrant'
with_machine_options :vagrant_options => { 'vm.box' => 'opscode-ubuntu-14.04' }

1.upto(2) do |i|
  machine "ha#{i}" do
    role 'web_server'
  end
end