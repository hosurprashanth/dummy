# # encoding: utf-8

# Inspec test for recipe .::ubuntu

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('openjdk-8-jdk') do
  it { should be_installed }
end

# verifying tomcat installation
describe package('tomcat8') do
  it { should be_installed }
end

# verify if the tomcat9 service is installed,enable and running

describe service('tomcat8') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

# verify if the tomcat-users.xml file exists 

describe file('/etc/tomcat8/tomcat-users.xml') do
  it { should exist }
end

# verify if 8080 port is listening

describe port(8080) do
  it { should be_listening }
end
