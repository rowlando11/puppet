class fail2ban::service {
	service { "fail2ban":
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		enable => true,
		require => Class["fail2ban::install"],
	}
}
