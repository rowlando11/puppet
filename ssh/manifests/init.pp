class ssh {
	include ssh::install, ssh::config, ssh::service, ssh::params, ssh::knownhosts, ssh::hostkeys
}
   
