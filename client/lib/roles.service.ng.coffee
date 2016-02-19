angular.module 'deployToolApp'
  .factory 'rolesSrv', ->
    _roles: ["ADMIN"]
    getRoles: -> _.clone @_roles
    isAdmin: (roles) -> "ADMIN" in roles
    hasRole: (role, roles) -> role in roles

