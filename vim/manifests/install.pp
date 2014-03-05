class vim::install {
	package { [ "vim-minimal", "vim-enhanced", "vim-common" ]:
		ensure => present
	}
}
