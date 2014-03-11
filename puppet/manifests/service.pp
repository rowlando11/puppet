class puppet::service {
	service { "puppet":
		ensure => stopped,
		hasstatus => true,
		hasrestart => true,
		enable => true,
		require => Class["puppet::install"],
	}
}
