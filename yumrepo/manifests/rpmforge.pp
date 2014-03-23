# rpmforge repo installation
class yumrepo::rpmforge {
  package { 'rpmforge-release':
    ensure => present,
  }
}
