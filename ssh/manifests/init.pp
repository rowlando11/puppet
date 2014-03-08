class ssh {
	include ssh::params, ssh::install, ssh::config, ssh::service, ssh::knownhosts, ssh::hostkeys
}
   
