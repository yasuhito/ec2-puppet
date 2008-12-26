class baseclass {
  include baseapps, sshd
  include users
  include operator, test
}


node default {
  include baseclass
}


class masternode {
  include baseclass
  include gmetad, ganglia-monitor
  include sudo
}


class computenode {
  include baseclass
  include ganglia-monitor
  include sudo
  include oprofile
}


