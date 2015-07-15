#
# Cookbook Name:: docker-test-vagrant
# Recipe:: default
#
# Copyright (c) 2015 CREATIONLINE,INC. All Rights Reserved.
#

docker_service 'default' do
  action [ :create, :start ]
end

group 'root' do
  action :modify
  members 'vagrant'
  append true
end

#
# [EOF]
#
