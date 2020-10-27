#
# Cookbook:: .
# Recipe:: lamp
#
# Copyright:: 2020, The Authors, All Rights Reserved.
if platform?('ubuntu')
    apt_update 'update ubuntu packages' do
        ignore_failure true
        action :update
    end
end


packages = node['mylamp']['packages']
package packages do
    action :install
end