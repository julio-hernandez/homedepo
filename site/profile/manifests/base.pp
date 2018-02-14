class profile::base{
  user {'licha':
    ensure =>present,
  }
  include profile::ssh_app
}
