class operator inherits virt_users {
  realize Group[ "operator" ]

  enable_user { "yasuhito":
    password_hash => 'S0NaAKfoxTVRg'
  }

  User[ "yasuhito" ] {
    groups => "operator",
  }
}
