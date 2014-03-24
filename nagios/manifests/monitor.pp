# Manage the Nagios monitoring service
class nagios::monitor {
  # Manage the packages
  package { [ "nagios", "nagios-plugins" ]: ensure => installed }
  # Manage the Nagios monitoring service
  service { "nagios":
    ensure    => running,
    hasstatus => true,
    enable    => true,
    subscribe => [ Package["nagios"], Package["nagios-plugins"] ],
}
  # Manage the main nagios config file	
    file { '/etc/nagios/nagios.cfg':
      ensure => present,
      mode   => 644,
      audit  => all,
      source => 'puppet:///modules/nagios/nagios.cfg',
      notify => Service["nagios"],
    }
  # collect resources and populate /etc/nagios/nagios_*.cfg
  Nagios_host    <<||>> { notify => Service["nagios"] }
  Nagios_service <<||>> { notify => Service["nagios"] }
}
