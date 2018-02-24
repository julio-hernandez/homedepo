class profile::ssh_app{
  package {'openssh-server':
      ensure =>present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key{'root@master.nis-puppet.vm':
    ensure=>present,
    user=>'root',
    type=>'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC/Mc3Pw9htxgPyG0l5+to8MSEgGq15KmCZJDe/tBcpsicfmhEEJcy/73HRtRqYgtAty3ETfF1UDvKb8Yyv8M2y0m6mY/6K3AF7QKs4nrBf+ya4/GgTNymenvSW7Kz6+714SLQCleEH3zWho6sT0NjJJ7ReCIh2T01U2sBt134kxM9zrSb9VZCsmpjM9m7GukmNg6BlLYza4JGwxvDaA/Eisw9Nc+nYFOue/4cGmg1LYBya2IqwZStbusUAbw7wy63UB6rp4vk4+Ls40wVMuB4Tl21qWLJbDvZ+aZgrIg4TdjOp7k7X9Jy9sQ4ZhReStIDOyuKgG5r5G/QhK5MTBIt9',
  }
}
