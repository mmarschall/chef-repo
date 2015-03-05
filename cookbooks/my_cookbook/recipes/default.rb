#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

include_recipe 'apt'

varnish_install "webapp" do
  vendor_repo true
end