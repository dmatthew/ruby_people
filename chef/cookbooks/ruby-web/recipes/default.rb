#
# Cookbook Name:: ruby-web
# Recipe:: default
#

package node['ruby']['package'] do
  action :install
end

# This is not needed if using Bundler
gem_package 'mongo' do
  action :install
end
