# Using Puppet to configure SSH client to use ~/.ssh/school and refuse password authentication

file_line { 'Declare identity file':
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
  match  => '^%?\s*IdentityFile\s+',
}

file_line { 'Turn off passwd auth':
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
  match  => '^%?\s*PasswordAuthentication\s+',
}

