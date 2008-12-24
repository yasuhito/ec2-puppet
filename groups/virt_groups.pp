class virt_groups {
  @group { "operator":
    gid => "37",
    ensure => present
  }

  @group { "test":
    gid => "2000",
    ensure => present
  }
}
