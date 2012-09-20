class pound {

  case $::operatingsystem {
    'Debian','Ubuntu': { include pound::debian }
    default          : { fail "Unknown ${::operatingsystem}" }
  }

}
