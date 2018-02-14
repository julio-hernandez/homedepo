class profile::ssh_app{
  package {'openssh-server':
      ensure =>present,
  }
  service {'sshd':
    ensure => running,
    enable => true,
  }
  ssh_authorized_key{'root@master.puppet.vm':
    ensure=>present,
    user=>root,
    type=>'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDkT6EvrtDUiFesOd890j1lDXCcD7P77i3T2ss9mNMqxlfiv5OwnZKsr4kg3pcPv7BY+Of1b3qMw5xzgvD5c6Xz95S+uMve0jfhGSI2HA4cg5dq+CnQj8wSz0Jm2PNuUlx4eL1GGcvFKzO6otYIUKma0gSG296FqJfXVTQUx5c/fgQfndZ3/Ek31EYDxnMnmrLuS6/SifUHXklIjgF3DaTMInChcuBYuN7N/rS5YF7bKr7ecRlmuYplJJgYiEcInzFmpEV1GifnUpC3u9Ze5Cl62N+oqWx9Zhsj5ICmON4OkI7UCTQcboiF8WCY/Y6idpdzJwu+2ufpOycyQU7e7rQ3',  
  }
  
}
