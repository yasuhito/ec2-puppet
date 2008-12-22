class ganglia-monitor {
  $config = '/etc/ganglia/gmond.conf'
  
  service { ganglia-monitor:
    pattern => '/usr/sbin/gmond',
    ensure => running,
    subscribe => [ Package[ 'ganglia-monitor' ], File[ $config ] ],
    enable => true,
    hasrestart => true,
    hasstatus => false,
  }

  file { "$config":
    owner => root,
    group => root,
    mode => 644,
    source => "puppet://domU-12-31-38-00-40-E5.compute-1.internal/files/apps/ganglia/gmond.conf"
  }                 
  
  package { ganglia-monitor:
    ensure => latest,
  }
}
