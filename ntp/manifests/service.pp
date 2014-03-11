class ntp::service {
	service { "ntpd":
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		require => Class["ntp::config"],
	}
}
	
