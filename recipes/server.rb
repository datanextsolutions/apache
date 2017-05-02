#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

package 'httpd' do
 action :install
end

file '/var/www/html/index.html' do
  content "<html>
           <body>
             <h1> Hello World... </h1>
             <h2> HOSTNAME: #{node['hostname']} </h2>
             <h2> IPADDREESS #{node['ipaddress']} </h2>
           </body>
           </html>"
end

service 'httpd' do
   action [ :enable, :start ]
end
