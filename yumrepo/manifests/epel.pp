# yum epel repo install for enterprise linux 6
class yumrepo::epel {

  if ($::operatingsystem == 'CentOS') and ($::operatingsystemrelease =~ /^6/) {
    yumrepo { 'epel-release':
      name           => 'Extra Packages for Enterprise Linux 6',
      mirrorlist     => 'https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=$basearch',
      enabled        => 1,
      failovermethod => 'priority',
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6',
      gpgcheck       => 1,
      require        => File['/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6'],
    }
    file { '/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6':
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
      source => 'puppet:///modules/yumrepo/RPM-GPG-KEY-EPEL',
    }
  }
    else {
    notify { 'We are installing this repo on CentOS versions 6 only!!':}
    }
}
