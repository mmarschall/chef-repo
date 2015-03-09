#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

include_recipe "nginx"

nginx_site "default" do
  enable false
end

app_name = "my_app"
app_home = "/srv/#{app_name}"

template "#{node[:nginx][:dir]}/sites-available/#{app_name}" do
  source "nginx-site-#{app_name}.erb"
  owner  "root"
  group  "root"
  mode   "0644"
  variables :app_home => app_home
  notifies :restart, resources(:service => "nginx")
end

directory "#{app_home}/public" do
  recursive true
end

file "#{app_home}/public/index.html" do
  content "<h1>Hello World!</h1>"
end

nginx_site "#{app_name}"
