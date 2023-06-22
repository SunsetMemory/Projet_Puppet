class ntp::config {
  file { $ntp::params::config_file_path:
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('ntp/ntp.conf.erb'),  # change 'ntp.conf.epp' to 'ntp.conf.erb'
    require => Package[$ntp::params::package_name],
    notify  => Service[$ntp::params::service_name],
  }
}

