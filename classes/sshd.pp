class sshd {
  $ssh_packages = [ "openssh-server", "openssh-client" ]

  package { $ssh_packages:
    ensure => installed
  }

  service { sshd:
    name => ssh,
    enable => true,
    ensure => running
  }
}
