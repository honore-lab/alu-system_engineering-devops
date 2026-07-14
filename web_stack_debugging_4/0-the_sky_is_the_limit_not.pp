# Increase Nginx worker_connections and restart service
exec { 'increase_ulimit':
  command => '/bin/sed -i "s/worker_connections 768;/worker_connections 10240;/" /etc/nginx/nginx.conf',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

exec { 'restart_nginx':
  command     => '/usr/sbin/service nginx restart',
  path        => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  subscribe   => Exec['increase_ulimit'],
  refreshonly => true,
}
