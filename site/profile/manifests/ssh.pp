class profile::ssh {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC95RSfBH4aKJVekQQQswHpIdhd9ikNzzs/0yO83eiNLb6Sq+7RztKyQR7lpQvGqRVVeJy7n31A5YsBCmN17kuhszoOfCuo/GlhzGkYe4D1EXbhUzWB2vDHUeND/OG4IpMzbOKRzyJbGqguLMnjPEobmoYF8UO+S8N851p6modixgFQ1d4+iuj/vMvGT3QiIu496vA7bAweuxLowvWYhqmx0UzhyvSXmxFNJmnJrsL2QrW9P6wtXdmd92XJlGgofi7bvUmSlYNFq7Y4G7/+G3BI5PLjAXrpcoNt3RclVZzDgbCN/rqXjVrYZXa5KOMdf0FX7PoN5Nf0JAInjDJS7Rnr',
  }
}
