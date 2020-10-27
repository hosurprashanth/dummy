if platform?('ubuntu')
    default['lampstack']['apache']['package'] = 'apache2'
    default['lampstack']['apache']['php_package'] = %w(php libapache2-mod-php php-mysql php-cli)
elsif platform?('redhat')
    default['lampstack']['apache']['package'] = 'httpd'    
    default['lampstack']['apache']['php_package'] = %w(php php-mysqlnd php-fpm)
end
