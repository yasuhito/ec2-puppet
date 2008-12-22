class virt_users {
  @user { "test":
    ensure => "present",
    uid => "2000",
    gid => "2000",
    comment => "Test User",
    home => "/home/test",
    shell => "/bin/bash",
  }
}
