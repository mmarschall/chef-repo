#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
servers = search(:node, "role:web")

servers.each do |srv|
  log srv.name
end
