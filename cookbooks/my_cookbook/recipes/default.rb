#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe "users"

users_manage "staff" do
  group_id 50
  action [ :remove, :create ]
end
