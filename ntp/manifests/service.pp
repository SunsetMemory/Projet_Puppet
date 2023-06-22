class ntp::service {
  service { $ntp::params::service_name:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => File[$ntp::params::config_file_path],
  }
}
