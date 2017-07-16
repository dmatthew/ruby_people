case node['platform_family']
when 'debian'
  default['ruby_people']['ruby_package'] = 'ruby-full'
  default['ruby_people']['node_package'] = 'nodejs'
when 'rhel'
  default['ruby_people']['ruby_package'] = 'ruby'
  default['ruby_people']['node_package'] = 'nodejs'
end
