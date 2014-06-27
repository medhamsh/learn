#
# Cookbook Name:: container-orchestration
# Recipe:: default
#
# Copyright 2014, Medhamsh
#
#

cookbook_file "/usr/local/bin/create_container.rb" do
  owner "root"
  group "root"
  source "create_container.rb"
end

cookbook_file "/usr/local/bin/containers.yaml" do
  owner "root"
  group "root"
  source "containers.yaml"
end
