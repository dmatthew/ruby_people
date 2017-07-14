case node['platform_family']
when 'debian'
  default['ruby']['package'] = 'ruby-full'
when 'rhel'
  default['ruby']['package'] = 'ruby'
end
