#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
#
# Just install http and enable and start.
#
if node['platform_family'] == "rehl"
	package = "httpd" 
elsif node['platform_family'] == "debian"
	package = "apache2"
end

package 'apache2' do
	package_name 'httpd'
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:enable, :start]
end

#include_recipe 'apache::websites'
