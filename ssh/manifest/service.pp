# This class manages the SSH service

class ssh::service {
  service { 'sshd':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/ssh/sshd_config'],
    require   => Class['ssh::config'],
  }
}
