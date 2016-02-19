Meteor.startup ->
  have_users = Meteor.users.find().count()
  return if have_users
  Accounts.createUser
    email: "admin@example.com"
    password: "admin"
    profile:
      roles: ["ADMIN"]

