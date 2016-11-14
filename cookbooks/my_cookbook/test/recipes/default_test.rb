# # encoding: utf-8

# Inspec test for recipe my_cookbook::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe file('/tmp/greeting.txt') do
  its('content') { should match 'Ohai, Chefs!' }
end
