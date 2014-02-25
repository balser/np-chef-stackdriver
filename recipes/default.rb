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

include_recipe 'stackdriver'
