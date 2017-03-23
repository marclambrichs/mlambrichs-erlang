# == Class erlang::repositories::centos
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
class erlang::repositories::centos (
  $baseurl     = $::erlang::repo_baseurl,
  $description = $::erlang::repo_description,  
  $enabled     = $::erlang::repo_enabled,
  $ensure      = $::erlang::repo_ensure,
  $ensure_epel = $::erlang::ensure_epel,
  $gpgcheck    = $::erlang::repo_gpgcheck,
  $gpgkey      = $::erlang::repo_gpgkey,
  $repo_name   = $::erlang::repo_name,
) {

  package { 'epel-release':
    ensure => $ensure_epel,
  }    

  yumrepo { $repo_name:
    baseurl  => $baseurl,
    descr    => $description,
    enabled  => $enabled,
    ensure   => $ensure,
    gpgcheck => $gpgcheck,
    gpgkey   => $gpgkey,
    name     => $repo_name,
  }

  Package['epel-release'] -> Yumrepo["${repo_name}"]  

}
