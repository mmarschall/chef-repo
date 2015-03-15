#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

include_recipe 'apt'
include_recipe "heartbeat"

heartbeat "heartbeat" do
  authkeys "MySecrectAuthPassword"
  autojoin "none"
  warntime 5
  deadtime 15
  initdead 60
  keepalive 2
  logfacility "syslog"
  interface "eth1"
  mode "bcast"
  udpport 694
  auto_failback true

  resources "192.168.0.100"

  search "name:ha*"
end


