class operator {
  include virt_users, virt_groups

  realize (
    Group[ "operator" ],
    User[ "yasuhito" ]
  )
}
