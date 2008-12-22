class test {
  include virt_users, virt_groups

  realize(
    Group[ "test" ],
    User[ "test" ]
  )
}
