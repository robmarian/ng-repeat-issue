angular.module 'deployToolApp', [
  'angular-meteor'
  'ui.router'
  'ui.bootstrap'
  'angularUtils.directives.dirPagination'
  'accounts.ui'
  'toastr'
]

.controller "AppCtrl", ($scope, rolesSrv) ->
  $scope.subscribe 'users', -> [
    fields:
      emails: 1
      profile: 1
  ]

  $scope.helpers
    user: -> Meteor.user()
    users: -> Meteor.users.find {}
    loggedIn: -> Meteor.user()?
    isAdmin: ->
      roles = Meteor.user()?.profile?.roles or []
      rolesSrv.isAdmin roles

onReady = () ->
  angular.bootstrap document, ['deployToolApp'], strictDi: true

if Meteor.isCordova
  angular.element(document).on 'deviceready', onReady
else
  angular.element(document).ready onReady
