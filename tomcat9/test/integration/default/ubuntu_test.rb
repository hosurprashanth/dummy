
describe group('tomcat')  do
    it { should exist }
end

describe user('tomcat') do
  it { should exist }
  its('group') { should eq 'tomcat' }
   its('home') { should eq '/opt/tomcat' }
end 