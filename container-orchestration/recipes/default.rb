#
# Cookbook Name:: container-orchestration
# Recipe:: default
#
# Copyright 2014, Medhamsh
#
#

cookbook_file "/usr/local/bin/containerize" do
  owner "root"
  group "root"
  action :delete
end

cookbook_file "/usr/local/bin/decontainerize" do
  owner "root"
  group "root"
  action :delete
end
