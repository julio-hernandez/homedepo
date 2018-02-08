class profile::base{
  user {'tibu':
    ensure =>present,
    group =>['wheel'],
  }
  
}
