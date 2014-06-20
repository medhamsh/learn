#
# Cookbook Name:: upgrade
# Recipe:: default
#
# Copyright 2014, Medhamsh
#
#

execute "apt-get-update" do
  command "apt-get update"
end

execute "apt-get-upgrade" do
  command "apt-get -y upgrade"
end

