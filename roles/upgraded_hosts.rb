name "upgraded_hosts"

run_list "recipe[my_cookbook]"
default_attributes 'my_cookbook' => { 'version' => '2.0.0' }
