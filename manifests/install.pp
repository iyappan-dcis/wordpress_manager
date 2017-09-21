class wordpress_manager::install {

    # Install curl
    package { 'curl':
        ensure => latest
    }

    # Install php-cli
    package { 'php-cli':
        ensure => latest
    }

    # Download WP-CLI using curl
    exec { 'Install WP CLI':
        command => "/usr/bin/curl -o /usr/bin/wp-cli -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar",
        require => [ Package['curl'], Package['php-cli'] ],
        creates => "/usr/bin/wp-cli"
    }

    # Change the mode of WP-CLI to a+x
    file { '/usr/bin/wp-cli':
        mode => "775",
        require => Exec['Install WP CLI']
    }

}

