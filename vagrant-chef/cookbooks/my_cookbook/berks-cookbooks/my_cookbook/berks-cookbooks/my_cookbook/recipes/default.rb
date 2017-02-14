#
# Cookbook:: my_cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "apt"

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:start, :enable] 
end

file '/usr/share/nginx/html/index.html' do
  content '<html><body><h1>Hello World!</h1></body></html>'
end  
