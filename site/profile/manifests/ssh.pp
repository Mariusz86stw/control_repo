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
    key => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDCigfLvSjXNy6uSBrYAb+KNJdLdb9HG7BhGoXF7skCtwlLBklkqFhkZFRavz5/GOm5MEKczJanfc2rbg1uU/uA+7b0x6yP/cOmDjAamJeTfs1Wjb9YOt3p7tDTkaVLuD3X15xS4AZ142Rhjuq5J4AlgTokT5jbJvWiWNg98li4T6oeW+BGksxnPfwwfCDqeC9X5ppvsNtj8JW2hgo0cvKqMA1HYTn2N2oFDxAmt6aDBeJT+J89Bv/nGUKSJ3SY+Uyr/g8fTdXisZHECB+6L2XG2Fygh7r3nMSKkbuY76I1WfKXSvuop6MmM5+r5dcqLosawxxTJ55ncMbTLHDSyER',
  }
}
