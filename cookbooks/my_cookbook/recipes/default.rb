#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe "chef_nginx"

# work around for https://github.com/chef-cookbooks/chef_nginx/issues/62
if !node['nginx']['default_site_enabled']
  file "/etc/nginx/conf.d/default.conf" do
    action :delete
  end
end

app_name = "my_app"
app_home = "/srv/#{app_name}"

directory "#{app_home}/public" do
  recursive true
end

file "#{app_home}/public/index.html" do
  content "<h1>Hello World!</h1>"
end

nginx_site "#{app_name}" do
  template "nginx-site-#{app_name}.erb"
  variables :app_home => app_home
  action :enable
end
