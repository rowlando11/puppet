# yum epel repo install
class yumrepo::epel {
  package { 'epel-release':
    ensure => present,
  }
}
