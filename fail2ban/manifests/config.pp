class fail2ban::config {
  file { "/etc/fail2ban/jail.conf":
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0600,
    audit => all,
    source => "puppet:///modules/fail2ban/jail.conf",
    require => Class["fail2ban::install"],
    notify => Class["fail2ban::service"],
  }
}
