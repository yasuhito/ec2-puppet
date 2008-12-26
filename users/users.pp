class users inherits virt_users {
  enable_user { "yasui":
    password_hash => 'S0NaAKfoxTVRg'
  }

  enable_user { "fujisawa":
    password_hash => 'S0NaAKfoxTVRg'
  }
}
