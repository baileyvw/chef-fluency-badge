hostname = node['hostname', 'static_hostname']
file '/etc/motd' do
	content "This is Hostname is : #{hostname}, #{static_hostname}"
end

