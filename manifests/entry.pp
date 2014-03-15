# Create an entry in the pound config
define pound::entry ($listen_ip,
    $listen_port,
    $listen_protocol,
    $head_require,
    $backend_ip,
    $backend_port) {


    concat::fragment {
        "pound_entry-${name}" :
            target => "${pound::pound_config}",
            content => template('pound/entry.cfg.erb'),
            order => 30,
            notify  => Service['pound'],
    }
}
