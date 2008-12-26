class test inherits virt_users {
  include virt_groups
  
  realize Group[ "test" ]
  
  disable_user { "test": }
}


### Local variables:
### mode: Puppet
### coding: utf-8-unix
### indent-tabs-mode: nil
### End:
