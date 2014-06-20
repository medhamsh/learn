#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'apache2' do
  action :install
end

service 'apache2' do
  action [ :enable, :start ]
end

cookbook_file "index.html" do
  owner "www-data"
  group "www-data"
  mode "0644"
  path "/var/www/index.html"
  source "index.html"
end
