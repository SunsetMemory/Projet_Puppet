class apache::params {
  case $facts['os']['family'] {
    'Debian': {
      $package_name = 'apache2'
      $service_name = 'apache2'
      $config_file_path = '/etc/apache2/sites-available/000-default.conf'
    }
    'RedHat': {
      $package_name = 'httpd'
      $service_name = 'httpd'
      $config_file_path = '/etc/httpd/conf/httpd.conf'
    }
    default: {
      fail("The ${module_name} module is not supported on ${facts['os']['family']}")
    }
  }
}
