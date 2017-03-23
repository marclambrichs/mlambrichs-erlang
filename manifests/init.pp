# == Class: erlang
#
# Class for installing erlang on Debian/RedHat/Centos.
#
# === Parameters
#
# @param apt_sources
# @param ensure_documentation
# @param ensure_emacs_mode
# @param ensure_epel
# @param ensure_manpages
# @param manage_repo
# @param repo_baseurl
# @param repo_enabled
# @param repo_ensure
# @param repo_gpgcheck
# @param repo_gpgkey
# @param repo_name
# @param repo_title
#
# === Examples
#
# @example
#    class { 'erlang':
#    }
#
# === Authors
#
# Author Marc Lambrichs <marc.lambrichs@gmail.com>
#
# === Copyright
#
# Copyright 2017 Marc Lambrichs, unless otherwise noted.
#
class erlang (
  $apt_sources          = $::erlang::params::apt_sources,
  $ensure_documentation = $::erlang::params::ensure_documentation,
  $ensure_emacs_mode    = $::erlang::params::ensure_emacs_mode,
  $ensure_epel          = $::erlang::params::ensure_epel,
  $ensure_manpages      = $::erlang::params::ensure_manpages,
  $manage_repo          = $::erlang::params::manage_repo,
  $repo_baseurl         = $::erlang::params::repo_baseurl,
  $repo_description     = $::erlang::params::repo_description,  
  $repo_enabled         = $::erlang::params::repo_enabled,
  $repo_ensure          = $::erlang::params::repo_ensure,
  $repo_gpgcheck        = $::erlang::params::repo_gpgcheck,
  $repo_gpgkey          = $::erlang::params::repo_gpgkey,
  $repo_name            = $::erlang::params::repo_name,
) inherits erlang::params {

  anchor { 'erlang::begin': } ->
  class { '::erlang::repositories': } ->
  class { '::erlang::install': } ->
  anchor { 'erlang::end': }

}
