class owncloud::package::debian() inherits owncloud::params {

  apt::key { 'owncloud':
    key        => "$key",
    key_source => "$key_source",
  } ->
  apt::source { 'owncloud':
    location    => "$location",
    repos       => '',
    release     => '/',
    include_src => false,
    before      => Package['owncloud'],
  }

}
