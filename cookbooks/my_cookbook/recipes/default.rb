#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#include_recipe "habitat"

hab_install 'install habitat'

user 'hab'

hab_package 'core/nginx'

hab_service 'core/nginx'
