name "monitoring"
description "Nagios server"
run_list(
  "recipe[apt::default]",
  "recipe[nagios::default]"
)

default_attributes(
  "nagios" => {
    "server_auth_method" => "htauth"
  },
  "apache" => {
    "mpm" => "prefork"
  }
)
