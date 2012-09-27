# Create an entry in the pound config
define pound::entry ($listen_ip,
    $listen_port,
    $listen_protocol,
    $head_require,
    $backend_ip,
    $backend_port) {

<<<<<<< HEAD
=======
#TODO support https as well as plain http
#    if $ == '' {
#    }
#    else {
#    }

>>>>>>> e53cd308435499990fdee20a33b5d5b65822a1ea
    concat::fragment {
        "pound_entry-${name}" :
            target => '/etc/pound/pound.cfg',
            content => template('pound/entry.cfg.erb'),
            order => 30,
            notify  => Service['pound'],
<<<<<<< HEAD
=======

>>>>>>> e53cd308435499990fdee20a33b5d5b65822a1ea
    }
}
