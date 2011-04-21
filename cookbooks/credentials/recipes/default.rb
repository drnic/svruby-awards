remote_file '/home/deploy/.eyrc' do
  owner node[:owner_name]
  group node[:owner_name]
  mode 0644
  source 'eyrc'
end


remote_file '/home/deploy/.ssh/id_rsa' do
  owner node[:owner_name]
  group node[:owner_name]
  mode 0600
  source 'id_rsa'
end

remote_file '/home/deploy/.ssh/id_rsa.pub' do
  owner node[:owner_name]
  group node[:owner_name]
  mode 0644
  source 'id_rsa.pub'
end
