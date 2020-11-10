# # encoding: utf-8

# Inspec test for recipe .::java

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package ('openjdk-11-jdk') do
  it { should be_installed }
end
