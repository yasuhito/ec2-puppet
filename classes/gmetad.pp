class gmetad {
  $config = '/etc/ganglia/gmetad.conf'
  
  service { gmetad:
    ensure => running,
    subscribe => [ Package[ 'gmetad' ], File[ $config ] ],
    enable => true,
    hasrestart => true,
    hasstatus => false,
  }

  file { "$config":
    owner => root,
    group => root,
    mode => 644,
    source => "puppet://$masterfqdn/files/apps/ganglia/gmetad.conf",
  }
  
  package { gmetad:
    ensure => latest,
  }
}
