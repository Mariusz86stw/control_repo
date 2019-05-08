node default {
 file { '/root/README':
  ensure  => file,
  content => 'This is readme, llearning',
  owner => 'root',
 }
}
