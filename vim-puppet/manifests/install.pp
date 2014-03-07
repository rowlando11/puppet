class vim-puppet::install {
	package { ["vim-common", "vim-puppet"]:
		ensure => present
	}
}
