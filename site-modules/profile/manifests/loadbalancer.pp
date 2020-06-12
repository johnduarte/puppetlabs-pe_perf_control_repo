# @summary
#   Profile for configuring haproxy
#
# @param balance_type
#   Method to use for load balancing
#
# @param stats_username
#   Username for authenticating to the stats web interface
#
# @param stats_password
#   Password for authenticating to the stats web interface
#
# @param stats_port
#   Port to publish the stats web interface on
#
class profile::loadbalancer(
  $balance_type   = 'roundrobin',
  $stats_username = 'puppet',
  $stats_password = 'puppet',
  $stats_port     = '9090',
){
  class { 'haproxy':
    global_options => {
      'log'     => "${::ipaddress} local0",
      'chroot'  => '/var/lib/haproxy',
      'pidfile' => '/var/run/haproxy.pid',
      'maxconn' => '25000',
      'daemon'  => '',
      'stats'   => 'socket /var/lib/haproxy/stats',
    },
  }

  haproxy::listen { 'stats':
    ipaddress        => '*',
    ports            => $stats_port,
    collect_exported => false,
    options          => {
      'mode'  => 'http',
      'stats' => ['uri /', "auth ${stats_username}:${stats_password}"]
    },
  }

  haproxy::listen { 'compile':
    ipaddress        => '*',
    ports            => '8140',
    collect_exported => true,
    options          => {
      'balance' => $balance_type,
      'maxconn' => '25000',
    },
  }

  haproxy::listen { 'pcp':
    ipaddress        => '*',
    ports            => '8142',
    collect_exported => true,
    options          => {
      'balance' => $balance_type,
      'maxconn' => '25000',
      'timeout' => 'tunnel 15m',
    },
  }
}
