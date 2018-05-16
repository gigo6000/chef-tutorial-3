#
# Cookbook:: webserver
# Recipe:: apache
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'apache2'

template '/var/www/html/index.html' do
  source 'index.html.erb'
  owner 'root'
  group 'root'
  mode '0644'
  variables ({
      :platform => node['platform'],
      :version => node['platform_version'],
      :ip => node['ipaddress']
  })
end

directory '/var/www/html/images' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  recursive true
end

remote_file '/var/www/html/images/rick.gif' do
  source 'https://media.giphy.com/media/1mPSDBbdnnXYQ/giphy.gif'
  owner 'www-data'
  group 'www-data'
  mode '0644'
end
