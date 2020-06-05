# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include nginx
#class nginx {
#}
#
#
class nginx {
  contain nginx::install
  contain nginx::config
  contain nginx::service

  Class['nginx::install']
  -> Class['nginx::config']
  ~> Class['nginx::service']
}
#
