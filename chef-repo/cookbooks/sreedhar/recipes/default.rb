#
# Cookbook Name:: sreedhar
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'tomcat7' do
     action :install
end
service  'tomcat7' do
    action [:restart]
end
cookbook_file '/var/lib/tomcat7/webapps/benefits.war' do
  source 'http://www.oracle.com/webfolder/technetwork/tutorials/obe/fmw/wls/12c/03-DeployApps/files/benefits.war
'
mode '0755'
end
