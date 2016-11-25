#
# Cookbook Name:: my_ntp
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'ntp::default'
node.override['ntp']['sync_hw_clock'] = true
resources("execute[Force sync hardware clock with system clock]").command "hwclock --systohc -D"
