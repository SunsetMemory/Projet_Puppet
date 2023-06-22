class ssh::params {
    case $facts['os']['family'] {
    'Debian': {
      $package_name = 'openssh-server'
      $service_name = 'ssh'
      $config_file_path = '/etc/ssh/sshd_config'
    }
    'RedHat': {
      $package_name = 'openssh-server'
      $service_name = 'sshd'
      $config_file_path = '/etc/ssh/sshd_config'
    }
    default: {
      fail("The ${module_name} module is not supported on ${facts['os']['family']}")
    }
  }
  $ssh_port = $::is_virtual ? {
    true    => '24',
    default => '23',
  }
}
