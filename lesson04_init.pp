class nginx (
  $package_name  = $nginx::params::package_name,
  $config_path   = $nginx::params::config_path,
  $config_source = $nginx::params::config_source,
  $service_name  = $nginx::params::service_name,
) inherits nginx::params {
contain nginx::install
contain nginx::config
contain nginx::service 



