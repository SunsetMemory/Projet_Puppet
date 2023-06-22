class ntp::params {

  case $facts['os']['family'] {
    'RedHat': {
      $package_name = 'ntp'
      $service_name = 'ntpd'
      $config_file_path = '/etc/ntp.conf'
    }
    'Debian': {
      $package_name = 'ntp'
      $service_name = 'ntp'
      $config_file_path = '/etc/ntp.conf'
    }
    default: {
      fail("Le module ntp n'est pas supporté sur le système d'exploitation ${facts['os']['family']}")
    }
  }
}


