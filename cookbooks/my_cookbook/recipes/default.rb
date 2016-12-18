#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

%w[git libsqlite3-dev].each do |p|
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
  end

  rails do
    database 'sqlite3:///db.sqlite3'
    precompile_assets false
    secret_token '4fd43ea2d5198a'
  end
end
