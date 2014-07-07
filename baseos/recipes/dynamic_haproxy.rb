template '/etc/haproxy/haproxy.cfg' do
  extend Helper
  variables(
    containers: container_ips('goatos'),
    start_port: 8000
   )
  source 'haproxy.cfg.erb'
end
