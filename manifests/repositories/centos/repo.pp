# == Class erlang::repositories::centos::repo
#
# === Parameters
#
# @param baseurl
# @param enabled
# @param ensure
# @param gpgcheck
# @param gpgkey
# @param name
# @param title
#
# === Authors
#
# Author Marc Lambrichs <marc.lambrichs@gmail.com>
#
# === Copyright
#
# Copyright 2017 Marc Lambrichs, unless otherwise noted.
#
class erlang::repositories::centos::repo (
  $baseurl     = $::erlang::repo_baseurl,
  $enabled     = $::erlang::repo_enabled,
  $ensure      = $::erlang::repo_ensure,
  $gpgcheck    = $::erlang::repo_gpgcheck,
  $gpgkey      = $::erlang::repo_gpgkey,
  $name        = $::erlang::repo_name,
  $title       = $::erlang::repo_title,
) {

  class { $title:
    baseurl  => $baseurl,
    enabled  => $enabled,
    ensure   => $ensure,
    gpgcheck => $gpgcheck
    gpgkey   => $gpgkey,
    name     => $name,
  }

}
