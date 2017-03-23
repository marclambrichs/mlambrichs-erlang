# == Class: erlang::params
#
# === Authors
#
# Author Marc Lambrichs <marc.lambrichs@gmail.com>
#
# === Copyright
#
# Copyright 2017 Marc Lambrichs, unless otherwise noted.
#
class erlang::params {
  $apt_sources          = {
    'erlang-solutions' => {
      location => 'https://packages.erlang-solutions.com/debian',
      repos    => 'contrib',
      key      => {
        id     => '434975BD900CCBE4F7EE1B1ED208507CA14F4FCA',
        server => 'pgp.mit.edu',
      },
    }
  }
  $ensure_documentation = absent
  $ensure_emacs_mode    = absent
  $ensure_epel          = absent
  $ensure_manpages      = absent
  $manage_repo          = false
  $repo_baseurl         = 'https://packages.erlang-solutions.com/rpm/centos/$releasever/$basearch'
  $repo_description     = 'Centos $releasever - $basearch - Erlang Solutions'      
  $repo_enabled         = true
  $repo_ensure          = 'present'
  $repo_gpgcheck        = 1
  $repo_gpgkey          = 'https://packages.erlang-solutions.com/rpm/erlang_solutions.asc'
  $repo_name            = 'erlang-solutions'
}
