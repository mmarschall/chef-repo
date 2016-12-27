#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe "apt"
include_recipe "heartbeat"

# node.override['heartbeat']['config']['auto_failback'] = true
# node.override['heartbeat']['config']['autojoin'] = "none"
# node.override['heartbeat']['config']['deadtime'] = 15
# node.override['heartbeat']['config']['authkeys'] = "975805c1085710426e2126ecb1b7663ff12757a4"
# node.override['heartbeat']['config']['active_key'] = 1
# node.override['heartbeat']['config']['initdead'] = 60
# node.override['heartbeat']['config']['keepalive'] = 2
# node.override['heartbeat']['config']['logfacility'] = "syslog"
# node.override['heartbeat']['config']['udpport'] = 694
# node.override['heartbeat']['config']['warntime'] = 5
# node.override['heartbeat']['config']['search'] = "name:ha*"
# node.override['heartbeat']['config']['mode'] = "bcast"
# node.override['heartbeat']['config']['interface'] = "eth1"
# node.override['heartbeat']['config']['resource_ip'] = "192.168.0.100"
#
# include_recipe "heartbeat::config"

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
