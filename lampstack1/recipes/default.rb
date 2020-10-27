#
# Cookbook:: lampstack1
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

if platform?('ubuntu') || platform?('centos')
    include_recipe 'lampstack1::lamp'
else
   Chef::Application.fatal!('This cookbook supports redhat and ubuntu platforms')
end