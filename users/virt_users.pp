class virt_users {
  @user { "yasuhito":
    ensure => "present",
    uid => "1000",
    gid => "1000",
    comment => "Yasuhito Takamiya",
    home => "/home/yasuhito",
    shell => "/usr/bin/zsh",
  }
}
