# == Class: erlang::repositories
#
# === Parameters
#
# === Authors
#
# Author Marc Lambrichs <marc.lambrichs@gmail.com>
#
# === Copyright
#
# Copyright 2017 Marc Lambrichs, unless otherwise noted.
#
class erlang::repositories (
  $manage_repo = $::erlang::manage_repo,
) {

  if $manage_repo {
    case $::osfamily {
      'Debian': {
        class { '::erlang::repositories::debian': }
      }
      'RedHat': {
        class { '::erlang::repositories::centos': }
      }
      default: {
      }
    }
  }
}
