# Increase worker_connections to allow more concurrent requests
exec { 'increase_ulimit':
  command => 'sed -i "s/worker_connections 768;/worker_connections 10240;/" /etc/nginx/nginx.conf',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

exec { 'restart_nginx':
  command => 'service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  subscribe => Exec['increase_ulimit'],
  refreshonly => true,
}
