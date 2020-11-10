if platform?('ubuntu')
    default['tomcat9']['java'] = 'openjdk-11-jdk'
end

default['tomcat9']['group'] = 'tomcat'
default['tomcat9']['user'] =  'tomcat'
default['tomcat9']['home'] = '/opt/tomcat'
default['tomcat9']['shell'] = '/bin/false'
