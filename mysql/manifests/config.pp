# mysql server config
class mysql::config {
  file { '/etc/my.cnf':
    ensure  => present,
    source  => 'puppet:///modules/mysql/my.cnf',
    owner   => 'mysql',
    group   => 'mysql',
    require => Class['mysql::install'],
    notify  => Class['mysql::service'],
  }
}
