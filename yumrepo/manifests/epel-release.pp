# yum epel repo install
class yumrepo::epel-release {
  package {'http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm':
  ensure => present,
  }
}
