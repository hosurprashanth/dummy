if platform?('ubuntu')
    default['tomcat_flavor2']['java_package'] = 'openjdk-8-jdk'
    default['tomcat_flavor2']['tomcat_package'] = 'tomcat8'
    default['tomcat_flavor2']['tomcat_additional_packages'] = %w(tomcat8-admin tomcat8-docs tomcat8-user tomcat8-examples tomcat8-common)    
    default['tomcat_flavor2']['users_xml_location'] = "/etc/tomcat8/tomcat-users.xml"
    default['tomcat_flavor2']['warlocation'] = '/var/lib/tomcat8/webapps/gameoflife.war'
end

default['tomcat_flavor2']['war'] = 'https://referenceappkhaja.s3-us-west-2.amazonaws.com/gameoflife.war'