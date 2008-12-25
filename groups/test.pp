class test {
  include virt_users, virt_groups

  enable_user { "test1": password_hash => 'q1w2e3r4t5y6u7i8o9p0' }
  disable_user { "test": }
}


### Local variables:
### mode: Puppet
### coding: utf-8-unix
### indent-tabs-mode: nil
### End:
