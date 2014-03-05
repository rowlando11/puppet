class apache::install {
	package {  $apache::params::apache_package_name:
		ensure => present,
	}
}
