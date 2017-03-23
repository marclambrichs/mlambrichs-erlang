# == Class erlang::repositories::debian
#
# === Parameters
#
# @param apt_sources
#
# === Authors
#
# Author Marc Lambrichs <marc.lambrichs@gmail.com>
#
# === Copyright
#
# Copyright 2017 Marc Lambrichs, unless otherwise noted.
#
class erlang::repositories::debian (
  $apt_sources = {},
) {
    
  package { 'apt-transport-https':
    ensure => present,
  }

  create_resources( 'apt::source', $apt_sources )

  Package['apt-transport-https'] -> Apt::Source<| |>

}
