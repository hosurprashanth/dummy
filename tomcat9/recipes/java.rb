#
# Cookbook:: .
# Recipe:: java
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update 'update' do
    ignore_failure true
    action :update
    only_if {platform?('ubuntu')}
end

java_package = node['tomcat9']['java']
package java_package do
    action :install
end