# This class installs the required packages

class ssh::install {
  package { $ssh::params::package_name:
    ensure => installed,
  }
}
