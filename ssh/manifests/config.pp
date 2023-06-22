class ssh::config {

  $ssh_port = $facts['is_virtual'] ? {
    true    => 24,
    default => 23,
  }

  file { '/etc/ssh/sshd_config':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => template('ssh/sshd_config.erb'),
    notify  => Service['ssh'],
  }
}
