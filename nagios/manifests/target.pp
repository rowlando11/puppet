# nagios host and service config file
class nagios::target {

  @@nagios_host { "$fqdn":
    ensure  => present,
    alias   => $hostname,
    address => $ipaddress,
    use     => "linux-server",
  }

  @@nagios_service { "check_ping_${hostname}":
<<<<<<< HEAD
	check_command       => "check_ping!100.0,20%!500.0,60%",
	use		            => "generic-service",
	host_name           => "$fqdn",
	notification_period => "24x7",
	service_description => "${hostname}_check_ping"
  }


  @@nagios_service { "check_load_${hostname}":
    check_command       => "check_nrpe!check_load",
=======
    check_command       => 'check_ping!100.0,20%!500.0,60%',
    use                 => "generic-service",
    host_name           => "$fqdn",
    notification_period => "24x7",
    service_description => "${hostname}_check_ping"
  }


  @@nagios_service { "check_load_${hostname}":
    check_command       => 'check_nrpe!check_load',
>>>>>>> 71403c53f2882fad52b09c55a738ed0aa818e7c3
    use                 =>   "generic-service",
    host_name           => "$fqdn",
    notification_period => "24x7",
    service_description => "${hostname}_check_load"
<<<<<<< HEAD
  } 

  @@nagios_service { "check_nrpe_${hostname}":
    check_command      => "check_tcp!5666",
	use                => "generic-service",
	host_name          => "$fqdn",
	notification_period => "24x7",
	service_description => "${hostname}_check_nrpe",
  }

  @@nagios_service { "check_http_${hostname}":
    check_command      => "check_tcp!80",
    use                => "generic-service",
    host_name          => "$fqdn",
    notification_period => "24x7",
    service_description => "${hostname}_check_http",
  }   

}
=======
  } 

  @@nagios_service { "check_nrpe_${hostname}":
    check_command       => "check_tcp!5666",
    use                 => "generic-service",
    host_name           => "$fqdn",
    notification_period => "24x7",
    service_description => "${hostname}_check_nrpe",
  }

  @@nagios_service { "check_http_${hostname}":
    check_command       => "check_tcp!80",
    use                 => "generic-service",
    host_name           => "$fqdn",
    notification_period => "24x7",
    service_description => "${hostname}_check_http",
  }   

}

>>>>>>> 71403c53f2882fad52b09c55a738ed0aa818e7c3
