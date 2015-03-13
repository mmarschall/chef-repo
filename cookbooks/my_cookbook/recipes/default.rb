#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

node.default['snmp']['syslocationVirtual'] = "Vagrant VirtualBox"
node.default['snmp']['syslocationPhysical'] = "My laptop"
node.default['snmp']['full_systemview'] = true

include_recipe "snmp"
