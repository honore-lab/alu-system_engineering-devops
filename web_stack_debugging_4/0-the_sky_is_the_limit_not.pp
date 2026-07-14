# Increase Nginx worker_connections and ensure site is listening on port 80
file { '/etc/nginx/sites-enabled/default':
  ensure  => file,
  content => "server {
    listen 80 default_server;
    listen [::]:80 default_server;
    root /var/www/html;
    index index.html index.htm;
    server_name _;
    location / {
        try_files \$uri \$uri/ =404;
    }
}",
}

exec { 'increase_ulimit':
  command => '/bin/sed -i "s/worker_connections 768;/worker_connections 10240;/" /etc/nginx/nginx.conf',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}

exec { 'restart_nginx':
  command     => '/usr/sbin/service nginx restart',
  path        => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  subscribe   => [File['/etc/nginx/sites-enabled/default'], Exec['increase_ulimit']],
  refreshonly => true,
}
