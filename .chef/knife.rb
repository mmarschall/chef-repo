# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "webops"
client_key               "#{current_dir}/webops.pem"
validation_client_name   "awo-validator"
validation_key           "#{current_dir}/awo-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/awo"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
