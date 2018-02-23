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
  file {'/root/README.txt':
    ensure => file,
    content =>$fqdn,
  }
  file { '/root/doublequotes.txt':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
  }
}

node 'master.nis-puppet.vm'{
  include role::ubuntu_master_server
}

node /^web/{
  include role::app_server
}

node /^db/{
  include role::db_server
}

node 't61'{
  include role::
}
