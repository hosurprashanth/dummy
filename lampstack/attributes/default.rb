if platform?('ubuntu')
    default['mylamp']['packages'] = %w(apache2 php libapache2-mod-php php-mysql)
elsif platform?('redhat')
    default['mylamp']['packages'] = %w(httpd php php-fpm)
else
    default['mylamp']['packages'] = nil
end