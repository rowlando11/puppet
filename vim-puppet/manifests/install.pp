class vim-puppet::install {
	package {"vim-puppet":
		ensure => present
		require => Class["vim::install"],
	}
}

