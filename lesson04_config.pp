class nginx::config (
  $config_path   = $nginx::params::config_path,
  $config_source = $nginx::params::config_source,
) inherits nginx::params {
file { 'nginx_config':
    path    => $config_path,
    source  => $config_source,
    ensure  => 'present',
    notify  => Service['nginx_service'],
 }
