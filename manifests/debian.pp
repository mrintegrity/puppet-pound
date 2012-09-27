# = Class: pound::debian
# Special debian class - inherits from pound::base
#
# You should not include this class - please refer to Class["pound"]
#
class pound::debian inherits pound::base {

  Service['pound'] {
    pattern => '/usr/sbin/pound',
    restart => '/etc/init.d/pound reload',
  }

}
