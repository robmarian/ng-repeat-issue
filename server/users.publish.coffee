Meteor.publish 'users', (options) ->
  options = _.extend {}, options
  user = Meteor.users.findOne _id: this.userId
  query = {}
  roles = user?.profile?.roles or []
  if "ADMIN" not in roles
    query._id = user?._id

  Meteor.users.find query, options

Accounts.onCreateUser (opts, user) ->
  opts.profile.roles = _.filter opts.profile.roles or [], (p) ->
    p in ["ADMIN"]

  user.profile = _.extend {}, opts.profile

  user
