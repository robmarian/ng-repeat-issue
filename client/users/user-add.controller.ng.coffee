angular.module 'deployToolApp'
  .controller 'UserAddCtrl', ($scope, $modalInstance, toastr, rolesSrv) ->
    $scope.user =
      email: ""
      profile:
        roles: []

    $scope.roles = rolesSrv.getRoles()

    $scope.hasRole = (role) -> rolesSrv.hasRole role, $scope.user.profile.roles

    $scope.toggleRole = (role) ->
      roles = $scope.user.profile.roles
      index = roles.indexOf role
      if index > -1
        roles.splice index, 1
      else
        roles.push role

    $scope.cancel = ->
      $modalInstance.dismiss()

    $scope.ok = ->
      Meteor.call "users.create", $scope.user, (err) ->
        return toastr.error err.message if err
        $modalInstance.close $scope.user
