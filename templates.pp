class baseclass {
  include emacs
  include ganglia-monitor
  include oprofile
  include xosview
  include sudo
}

node default {
  include baseclass
}


