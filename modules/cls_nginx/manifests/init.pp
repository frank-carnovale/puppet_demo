class cls_nginx {
    package { 'nginx':
        ensure => installed,
    }
    service { 'nginx':
        ensure => running,
        require => Package['nginx'],
    }
    file { '/home/frankc/stuff/public/blah.html':
        source => 'puppet:///modules/cls_nginx/blah.html',
        notify => Service['nginx'],
    }
}
