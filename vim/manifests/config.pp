class vim::config {
	file { "/etc/vimrc":
		ensure => present,
		source => "puppet:///modules/vim/vimrc",
		owner => "root",
		group => "root",
		mode  => 0644,
		audit => all,
		require => Class["vim::install"],
	}

}


