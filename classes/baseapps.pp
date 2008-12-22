class baseapps {
  $packagelist = [ "rubygems", "lv", "xosview", "emacs", "zsh" ]

  package { $packagelist:
    ensure => installed
  }
}
