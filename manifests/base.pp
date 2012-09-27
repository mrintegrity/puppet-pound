# = Class: pound::base
#
# Declares some basic resources.
# You should NOT include this class as is, as it won't work at all!
# Please refer to Class['pound'].
#
class pound::base {
#includes
    include concat::setup
    #
    concat {
        '/etc/pound/pound.cfg' :
            owner => root,
            group => root,
            mode => '0644'
    }
    package {
        'pound' :
            ensure => present,
    }
    service {
        'pound' :
            ensure => running,
            enable => true,
            require => Package['pound'],
    }
    concat::fragment {
        'pound_header' :
            target => '/etc/pound/pound.cfg',
            content => template('pound/header.cfg.erb'),
            order => 01,
    }
    concat::fragment {
        'pound_footer' :
        target => '/etc/pound/pound.cfg',
        content => "END\n",
        order => 40,
    }
}
