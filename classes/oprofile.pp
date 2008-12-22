class oprofile {
  package { oprofile:
    ensure => latest,
    require => Package[ 'sudo' ],
  }
}
