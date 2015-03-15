name "monitoring"
description "Nagios server"
run_list(
  "recipe[apt]",
  "recipe[my_cookbook]"
)

default_attributes(
  "nagios" => {
    "server_auth_method" => "htauth"
  },
  "apache" => {
  	"mpm" => "prefork"
  }
)


#node['nagios']['server']['web_server'] = 'nginx'
#node['nagios']['server']['stop_apache'] = true