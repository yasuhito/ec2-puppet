class baseapps {
  $packagelist = [ "rubygems", "lv", "xosview", "emacs" ]

  package { $packagelist:
    ensure => installed
  }
}
