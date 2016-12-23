#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe "apt"

apt_repository 'php5' do
  uri          'ppa:ondrej/php'
  distribution node['lsb']['codename']
end

apt_package "php5.6"
apt_package "libapache2-mod-php5.6"
