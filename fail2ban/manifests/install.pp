class fail2ban::install {
    package { fail2ban: 
        ensure => present,
    }
}

