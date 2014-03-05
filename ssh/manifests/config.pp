class ssh::config {
    file { "/etc/ssh/sshd_config": 
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0440,
        content => template("ssh/sshd_config.erb"), 
        require => Class["ssh::install"],
        notify  => Class["ssh::service"],
    }
}

