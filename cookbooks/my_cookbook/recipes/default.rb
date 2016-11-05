#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
node.default['my_cookbook']['greeting'] = "Go!"

template '/tmp/greeting.txt' do
  variables greeting: node['my_cookbook']['greeting']
end
