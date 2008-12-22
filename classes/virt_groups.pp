class virt_groups {
  @group { "test":
    gid => "2000",
    ensure => present
  }
}
