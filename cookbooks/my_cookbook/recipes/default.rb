#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

include_recipe "iptables"
iptables_rule "ssh"

node.default['fail2ban']['services'] = {
  'ssh-ddos' => {
        "enabled" => "true",
        "port" => "ssh",
        "filter" => "sshd-ddos",
        "logpath" => node['fail2ban']['auth_log'],
        "maxretry" => "6"
     }
}

include_recipe "fail2ban"