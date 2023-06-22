class ssh::service {
  service { $ssh::params::service_name:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => File[$ssh::params::config_file_path],
  }
}

