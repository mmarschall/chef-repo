#
# Cookbook Name:: greeting
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
greeting_file "Ohai" do
  title "Chef"
  action :create
end
