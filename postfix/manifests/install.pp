# postfix installation class
class postfix::install {
  package { [ 'postfix', 'mailx' ]:
    ensure => present,
  }
}
