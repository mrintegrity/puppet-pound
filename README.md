Pound reverse proxy module
==========================

Status
------
This module is in a fairly basic state right now, this is my first attempt at writing a real puppet module so please review the code before you put it into action.

Features
--------
Manage a single /etc/pound/pound.cfg configuration, add entries for HTTP listeners and their backends.

TODO 
----
* Rework the module a bit to follow best practice
* Add support for changing Global Directives (currently static defaults)
* Some kind of support for managing the service with the poundctl command might be good to have (maybe even essential)

Usage
-----
<pre><code>
#node.pp
    include pound 
    pound::entry {
        'test' :
            listen_ip => '0.0.0.0',
            listen_port => '8888',
            listen_protocol => 'ListenHTTP',
            head_require => 'HEADREQUIREEEEE',
            backend_ip => '1.1.1.1',
            backend_port => '9999'
    }
    pound::entry {
        'test2' :
            listen_ip => '1.101.101.10',
            listen_port => '8828',
            listen_protocol => 'ListenHTTPS',
            head_require => 'HEADREQUIREEEEE',
            backend_ip => '14.14.14.14',
            backend_port => '9399'
    }
</code></pre>

Copyright
---------
GPLv3 or later