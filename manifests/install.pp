# == Class erlang::install
#
# === Parameters
#
# @param emacs_mode
# @param install_documentation
# @param install_manpages
#
# === Authors
#
# Author Marc Lambrichs <marc.lambrichs@gmail.com>
#
# === Copyright
#
# Copyright 2017 Marc Lambrichs, unless otherwise noted.
#
class erlang::install (
  $ensure_emacs_mode    = $::erlang::ensure_emacs_mode,
  $ensure_documentation = $::erlang::ensure_documentation,
  $ensure_manpages      = $::erlang::ensure_manpages,
) {

  package { 'erlang':
    ensure => present,
  }

  package { 'erlang-doc':
    ensure => $ensure_documentation
  }

}
