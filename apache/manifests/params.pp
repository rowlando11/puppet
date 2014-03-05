class apache::params {
    case $operatingsystem {
        /(Ubuntu|Debian)/: {
            $apache_package_name = 'apache2'
      #      $ssh_service_config = '/etc/ssh/sshd_config'
            $apache_service_name = 'apache2'
        }
        /(RedHat|CentOS|Fedora)/: {
            $apache_package_name = 'httpd'
       #     $ssh_service_config = '/etc/ssh/sshd_config'
            $apache_service_name = 'httpd'
        }
    }
}

