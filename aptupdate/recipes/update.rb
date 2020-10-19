execute 'apt-get update' do
  command 'apt-get update -y '
end

execute 'ubuntu reboot' do
  command 'reboot -y'
end
