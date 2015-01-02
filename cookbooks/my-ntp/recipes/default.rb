#
# Cookbook Name:: my-ntp
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.
include_recipe 'ntp::default'
node.override['ntp']['sync_hw_clock'] = true
resources("execute[Force sync hardware clock with system clock]").command "hwclock --systohc -D"
