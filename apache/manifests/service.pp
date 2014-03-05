class apache::service {
	service { $apache::params::apache_service_name:
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		enable => true,
		require => Class["apache::install"],
	}
}

