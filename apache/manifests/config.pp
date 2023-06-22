class apache::config {
  file { $apache::params::config_file_path:
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('apache/000-default.conf.erb'),
    require => Package[$apache::params::package_name],
    notify  => Service[$apache::params::service_name],
  }
  $apache_port = hiera('apache_port', '84')

  file { '/etc/apache2/ports.conf':
    ensure  => file,
    content => template('apache/ports.conf.erb'),
    notify  => Service['apache2'],
  }
}
