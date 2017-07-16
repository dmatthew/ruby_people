#
# Cookbook Name:: ruby-web
# Recipe:: default
#

package node['ruby_people']['ruby_package'] do
  action :install
end

package node['ruby_people']['node_package'] do
  action :install
end

gem_package 'bundler' do
  action :install
end
