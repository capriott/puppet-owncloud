class owncloud::params() {

  case $::operatingsystem {
    'Debian': {
      if versioncmp ($::operatingsystemmajrelease, '7') == 0 {
        $key = '5180350A'
        $key_source = 'https://download.owncloud.org/download/repositories/stable/Debian_7.0/Release.key'
        $location = 'http://download.owncloud.org/download/repositories/stable/Debian_7.0/'
      } elsif versioncmp ($::operatingsystemmajrelease, '8') == 0 {
        $key = '5180350A'
        $key_source = 'https://download.owncloud.org/download/repositories/stable/Debian_8.0/Release.key'
        $location = 'deb http://download.owncloud.org/download/repositories/stable/Debian_8.0/'
      }
    }
  }

}
