

execute 'apt-get update' do
      command 'apt-get update -y'
end

reboot 'node' do
  action :request_reboot
end
