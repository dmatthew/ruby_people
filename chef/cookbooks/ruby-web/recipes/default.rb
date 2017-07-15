#
# Cookbook Name:: ruby-web
# Recipe:: default
#

package node['ruby']['package'] do
  action :install
end

gem_package 'mongo' do
  action :install
end
