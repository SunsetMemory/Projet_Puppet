# This class manages the dependencies of other classes

class ssh {
  include ssh::params
  include ssh::install
  include ssh::config
  include ssh::service
}
