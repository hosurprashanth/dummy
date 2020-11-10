#
# Cookbook:: .
# Recipe:: ubuntu
#
# Copyright:: 2020, The Authors, All Rights Reserved.

group_name = node['tomcat9']['group']

group group_name do
    action :create
end

username = node['tomcat9']['user']
home_path = node['tomcat9']['home']
shell_default = node['tomcat9']['shell']

user username do
    comment 'This is tomcat user'
    gid 'group_name'
    home home_path
    shell 'shell_default'
    action :create
end
