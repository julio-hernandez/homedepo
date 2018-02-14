class profile::ssh_app{
  package {'openssh-server':
      ensure =>present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key{'root@master.puppet.vm':
    ensure=>present,
    user=>'root',
    type=>'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC7xE97MsVq/nNzLgrcM/AQr+0zS5SqTnNDJ/+mhdWaZk0ssZGYkIPKHLTyXmWgoi9JMRs5IixTJ0iZ8tEKuSg/IqpXIwQBTXP6VaH2doVYqKk4NA57nZmi+A1Qx3ux8wz5CBmwfrkbgxboBY5YW5D5GrwH9Bm81qoy+SJFPg5krgZhQb5xXFSg4GHYmRtw86OiofL/8zlLuDs0fSt5UOn5zMau/d6stYqa5Mgz5ufG7xGBoczloQtLleHpvsn4gQmEeR7DWlI+SHZpr/SPECaZ6sNJCsqfbtZMloGaTc3C677qGZy+UDGvnVeSUrGCvc66jU2nz1GISBJIrZvSe2DR',
  }
}
