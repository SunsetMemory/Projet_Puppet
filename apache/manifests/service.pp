class apache::service {
  service { $apache::params::service_name:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => File[$apache::params::config_file_path],
  }
}