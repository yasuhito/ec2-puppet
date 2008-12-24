class baseclass {
  include baseapps, sshd
  include operator
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


