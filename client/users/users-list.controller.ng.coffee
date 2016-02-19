angular.module 'deployToolApp'
.controller 'UsersListCtrl', ($scope, $modal, toastr) ->
  $scope.addUser = ->
    modal = $modal.open
      controller: "UserAddCtrl"
      templateUrl: "client/users/user-add-modal.view.ng.html"

