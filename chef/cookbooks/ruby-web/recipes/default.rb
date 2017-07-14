#
# Cookbook Name:: ruby-web
# Recipe:: default
#

package node['ruby']['package'] do
  action :install
end
