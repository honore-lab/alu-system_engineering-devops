# Raises the nginx open file limit so it can handle many concurrent requests
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => ['/bin', '/usr/bin'],
}

exec { 'restart-nginx':
  command => 'service nginx restart',
  path    => ['/usr/sbin', '/usr/bin', '/sbin', '/bin'],
  require => Exec['fix--for-nginx'],
}
