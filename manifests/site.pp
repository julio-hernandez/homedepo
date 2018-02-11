node default{
  file {'/root/readme':
    ensure => file,
    content => 'This is a test readme file',
  }
  file {'/home/vagrant/readme':
    ensure => file,
    content => 'This is another test for th vagrant user',
  }
}

node 'master.puppet.vm' {
  include role::master_server
}

node 'master.nis-puppet.vm'{
  include role::ubuntu_master_server
}

node /^web/{
  include role::apps_server
}

node /^db/{
  include role::db_server
}
