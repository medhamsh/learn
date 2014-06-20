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
  mode "0755"
  source "containerize"
end

cookbook_file "/usr/local/bin/decontainerize" do
  owner "root"
  group "root"
  mode "0755"
  source "decontainerize"
end
