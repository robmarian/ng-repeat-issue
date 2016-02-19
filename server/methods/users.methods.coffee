Meteor.methods
  "users.create": (user) ->
    Accounts.createUser user
