#
# Cookbook:: .
# Recipe:: lamp
#
# Copyright:: 2020, The Authors, All Rights Reserved.


apache_package = node['lampstack']['apache']['package']

php_packages = node['lampstack']['apache']['php_package']

apt_update 'ubuntu package update' do
    ignore_failure true
    action :update
    only_if  { platform?('ubuntu') }
end


package apache_package do
    action :install
    notifies :enable, "service[#{apache_package}]"
end

service apache_package do
    action :nothing
end


package php_packages do
    action :install
    notifies :restart, "service[#{apache_package}]"
end

file '/var/www/html/info.php' do
    content '<?php phpinfo(); ?>'
    action :create
    notifies :restart, "service[#{apache_package}]", :immediately
end
