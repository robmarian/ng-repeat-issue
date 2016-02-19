angular.module 'deployToolApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'users',
    abstract: true
    url: '/users'
    template: '<ui-view/>'
  .state 'users.all',
    url: '/all'
    templateUrl: 'client/users/users-list.view.ng.html'
    controller: 'UsersListCtrl'
