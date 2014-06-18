#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'lxc' do
  action :install 
end

package 'systemd-services' do
  action :install
end

package 'uidmap' do
  action :install
end

cookbook_file "/etc/lxc/lxc-usernet" do
  owner "root"
  group "root"
  mode "0644"
  source "lxc-usernet"
end

directory "/home/ubuntu/.config" do
  action :create
  owner "ubuntu"
  group "ubuntu"
  mode "0700"
end

directory "/home/ubuntu/.config/lxc" do
  action :create
  owner "ubuntu"
  group "ubuntu"
  mode "0775"
end

cookbook_file "/home/ubuntu/.config/lxc/default.conf" do
  owner "ubuntu"
  group "ubuntu"
  mode "0664"
  source "default.conf"
end

directory "/home/ubuntu" do
  mode "0755"
end
