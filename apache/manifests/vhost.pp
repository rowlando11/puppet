define apache::vhost( $port, $docroot, $ssl=true, $template='apache/vhost.conf.erb', $priority, $serveraliases = '' ) {

	include apache

	file { "/etc/httpd/conf.d/${priority}-${name}":
		content => template($template),
		owner => 'root',
		group => 'root',
		mode => '777',
		require => Class["apache::install"],
		notify => Class["apache::service"],
	}
	
#	apache::vhost { 'www.example.com':
#		port => 80,
#		docroot => '/var/www/www.example.com',
#		ssl => false,
#		priority => 10,
#		serveraliases => 'home.example.com',
#	}
}
