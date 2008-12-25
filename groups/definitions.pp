# [HACK]: netinfo 以外の provider ではパスワード管理をサポートしていないので、/etc/shadow を直接編集
define set_password( $hash ) {
  ensure_key_value { "set_password_$name":
    file      => '/etc/shadow',
    key       => $name,
    value     => "$hash:13572:0:99999:7:::",
    delimiter => ':'
  }
}
        

define enable_user( $password_hash ) {
  realize User[ $name ]
  realize Group[ $name ]
  
  set_password { $name:
    hash => $password_hash
  }

  $home_dir = $name ? {
    root => "/root",
    default => "/home/$name"
  }
  
  file { $home_dir:
    ensure => directory,
    require => [ User[ $name ], Group[ $name ] ],
    owner => $name,
    group => $name
  }
}


define disable_user {
  realize User[ $name ]

  set_password { $name:
    hash => '!!'
  }
}


#
# Derived from "Password Management" Recipe
# http://reductivelabs.com/trac/puppet/wiki/Recipes/PasswordManagement
#
define ensure_key_value( $file, $key, $value, $delimiter = " " ) {
  # append line if "$key" not in "$file"
  exec { "echo '$key$delimiter$value' >> $file":
    unless => "grep -qe '^$key[[:space:]]*$delimiter' -- $file",
    path => "/bin",
  }

  # update it if it already exists...
  exec { "sed -i -e 's/^$key$delimiter.*$/$key$delimiter$value/g' $file":
    unless => "grep -xqe '$key[[:space:]]*$delimiter[[:space:]]*$value' -- $file",
    path => "/bin",
  }
}


### Local variables:
### mode: Puppet
### coding: utf-8-unix
### indent-tabs-mode: nil
### End:
