class sudo {
  package { sudo:
    ensure => latest,
    require => File[ '/etc/sudoers' ],
  }

  file { '/etc/sudoers':
    owner => root,
    group => root,
    mode => 440,
    source => "puppet://domU-12-31-38-00-40-E5.compute-1.internal/files/apps/sudo/sudoers"
  }
}
