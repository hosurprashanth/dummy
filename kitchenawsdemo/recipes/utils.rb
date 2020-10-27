#
# Cookbook:: .
# Recipe:: utils
#
# Copyright:: 2020, The Authors, All Rights Reserved.
if platform?('ubuntu')
    apt_update 'update packages' do
        ignore_failure true
        action :update
    end
end

utilities = %w(git tree nano)
package utilities do
    action :install
end