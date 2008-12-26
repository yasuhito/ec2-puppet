class virt_groups {
  @group { "operator":
    gid => "37",
    ensure => present
  }

  @group { "yasuhito":
    gid => "1000",
    ensure => present
  }

  @group { "yasui":
    gid => "1001",
    ensure => present
  }

  @group { "fujisawa":
    gid => "1002",
    ensure => present
  }
  
  @group { "test":
    gid => "2000",
    ensure => present
  }

  @group { "test1":
    gid => "2001",
    ensure => present
  }
}
