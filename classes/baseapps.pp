class baseapps {
  $packagelist = [ "rubygems", "lv", "xosview", "emacs", "zsh", "gfortran" ]

  package { $packagelist:
    ensure => installed
  }
}
