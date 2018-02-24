class profile::ubuntu_agent_nodes{
  host{'t61':
    ensure =>present,
    ip =>'192.168.75.155',
  }
  host{'client-1.example.com':
    ensure => present,
    ip     =>'192.168.75.196',
  }
}
