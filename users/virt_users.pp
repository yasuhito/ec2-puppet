User {
  provider => "useradd",
  managehome => true,
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
    password => "hoge",
  }
}
