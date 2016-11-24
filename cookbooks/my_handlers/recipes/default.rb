#
# Cookbook Name:: my_handlers
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe "chef_handler"
chef_gem "flowdock"
remote_file "#{node["chef_handler"]["handler_path"]}/flowdock_handler.rb" do
  source "https://raw.githubusercontent.com/mmarschall/chef-handler-flowdock/master/lib/chef/handler/flowdock_handler.rb"
end
chef_handler "Chef::Handler::FlowdockHandler" do
  source "#{node["chef_handler"]["handler_path"]}/flowdock_handler.rb"
  arguments :api_token =>  "a3a0603db0ba6041675f44c6971abb35"
  action :enable
end
