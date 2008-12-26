class sudo {
  package { sudo:
    ensure => latest,
    require => File[ '/etc/sudoers' ],
  }

  file { '/etc/sudoers':
    owner => root,
    group => root,
    mode => 440,
    source => "puppet://$masterfqdn/files/apps/sudo/sudoers"
  }
}
