# This class manages the configuration files

class ssh::config {
  file { '/etc/ssh/sshd_config':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('ssh/sshd_config.erb'),
    require => Class['ssh::install'],
  }
  
  file { 'sshd_config_template':
    ensure  => present,
    path    => 'ssh/templates/sshd_config.erb',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
}
