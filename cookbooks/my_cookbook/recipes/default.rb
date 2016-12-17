#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

%w[git libsqlite3-dev].each do |p| # libssl-dev
  package p
end

application "/usr/local/rails-app" do

  owner "www-data"
  group "www-data"

  ruby_runtime "2"

  git do
    repository 'https://github.com/mmarschall/rails-app.git'
  end

  bundle_install do
    deployment true
    without %w[test development]
  end

  rails do
    database 'sqlite3:///db.sqlite3'
    precompile_assets false
  end

  unicorn do
    port 9001
  end
end
