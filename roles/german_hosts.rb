name "german_hosts"
description "This Role contains hosts, which should print out their messages in German"
run_list "recipe[my_cookbook]"
default_attributes "my_cookbook" => { "message" => "Hallo Welt!" }
