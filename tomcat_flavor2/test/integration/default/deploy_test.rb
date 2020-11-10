# # encoding: utf-8

# Inspec test for recipe .::deploy

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/
describe file('/var/lib/tomcat8/webapps/gameoflife.war') do
  it { should exist }
end