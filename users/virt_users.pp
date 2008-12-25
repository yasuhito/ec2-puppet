User {
  provider => "useradd",
}


class virt_users {
  @user { "yasuhito":
    ensure => "present",
    uid => "1000",
    gid => "1000",
    comment => "Yasuhito Takamiya",
    home => "/home/yasuhito",
    shell => "/usr/bin/zsh",
  }

  @user { "test":
    ensure => "present",
    uid => "2000",
    gid => "2000",
    comment => "test user",
    home => "/home/test",
    shell => "/usr/bin/zsh",
  }

  @user { "test1":
    ensure => "present",
    uid => "2001",
    gid => "2001",
    comment => "test user",
    home => "/home/test1",
    shell => "/usr/bin/zsh",
  }
}


### Local variables:
### mode: Puppet
### coding: utf-8-unix
### indent-tabs-mode: nil
### End:
