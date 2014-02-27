#
# Cookbook Name:: np-chef-stackdriver
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
#

secure_stackdriver = Chef::EncryptedDataBagItem.load('secure', 'stackdriver')
node.set[:stackdriver][:api_key] = secure_stackdriver['api_key']

node.set[:stackdriver][:plugins][:nginx][:enable] = true
node.set[:stackdriver][:plugins][:nginx][:url]    = 'http://127.0.0.1/nginx_status'

include_recipe 'stackdriver'
include_recipe 'stackdriver::plugins'
