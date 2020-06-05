# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include nginx::config
#
#   i
#


class nginx::config {
  file { 'nginx_config':
    path   => '/etc/nginx/nginx.conf',
    source => 'puppet:///modules/nginx/rh-nginx.conf',
    ensure => 'present',
    notify => Service['nginx_service'],
  }
}


