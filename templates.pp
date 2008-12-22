class baseclass {
  include baseapps, sshd
}


node default {
  include baseclass
}


class computenode {
  include baseclass
  include ganglia-monitor
  include sudo
  include oprofile
}


