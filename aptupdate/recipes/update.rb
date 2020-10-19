execute 'apt-get update' do
      command 'apt-get update -y '
end

reboot 'ubuntu' do
  action :reboot_now
  notifies :immediately
end
  
