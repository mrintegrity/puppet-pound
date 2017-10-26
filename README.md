Pound reverse proxy module
==========================

Status
------
Puppet-pound is inspired by the [CampToCamp bind] [1] module.

Features
--------
Manage a single /etc/pound/pound.cfg configuration, add entries for HTTP listeners and their backends.

Todo
----
* Add support for changing Global Directives (currently static defaults)
* Some kind of support for managing the service with the poundctl

Usage
-----
``` puppet
#node.pp
    pound::entry {
        'test' :
            listen_ip => '30.40.50.60',
            listen_port => '8888',
            listen_protocol => 'ListenHTTP',
    }
    pound::entry {
        'test' :
            listen_ip => '0.0.0.0',
            listen_port => '8000',
            listen_protocol => 'ListenHTTP',
            head_require => 'Host:.*files.myserver.com.*',
            service => true,
            backend => [ {
              ip => '127.0.0.1',
              port => '9999'
            },
            {
              ip => '127.0.0.2',
              port => '9998'
            }, ],
    }
    pound::entry {
        'test2' :
            service => true,
            head_require => 'Host:.*share.myserver.com.*',
            backend => [ {
              ip => '14.14.14.14',
              port => '9399'
            }, ],
    }
```
Copyright
---------
GPLv3 or later

[1]: https://github.com/camptocamp/puppet-bind        "CampToCamp Bind"
