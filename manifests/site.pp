node default{
  file {'/root/readme':
    ensure => file,
    content => 'This is a test readme file',
  }
  file {'/vagrant/readme':
    ensure => file,
    content => 'This is another test for th vagrant user',
  }
}
