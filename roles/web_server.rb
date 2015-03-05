name "web_server"
run_list "recipe[my_cookbook]"

default_attributes "nginx" => { 
  "init_style" => "init",
  "enable_default_site" => false
}
