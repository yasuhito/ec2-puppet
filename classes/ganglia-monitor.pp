class ganglia-monitor {
  $config = '/etc/ganglia/gmond.conf'
  $rrddir = '/var/lib/ganglia/rrds/'
  
  service { ganglia-monitor:
    pattern => '/usr/sbin/gmond',
    ensure => running,
    subscribe => [ Package[ 'ganglia-monitor' ], File[ $config ], File[ $rrddir ] ],
    enable => true,
    hasrestart => true,
    hasstatus => false,
  }

  file { "$rrddir":
    owner => nobody,
    group => nogroup,
    mode => 644,
    recurse => true,
  }
  
  file { "$config":
    owner => root,
    group => root,
    mode => 644,
    source => $hostname ? {
      'domU-12-31-38-00-40-E5' => "puppet://$masterfqdn/files/apps/ganglia/gmond.conf.master",
      default => "puppet://$masterfqdn/files/apps/ganglia/gmond.conf"
    }
  }
  
  package { ganglia-monitor:
    ensure => latest,
  }
}
