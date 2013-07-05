app = angular.module("angular-animate", [])

app.controller "animate-controller", ($scope, $timeout, $log) ->
  $scope.activeAnimation = "animat0r"
  $scope.hello = false
  $scope.lock = false

  $scope.setActiveAnimation = ($animationName) ->
    if $scope.lock
      return

    $log.info $animationName
    $scope.lock = true
    $scope.activeAnimation = ""
    $scope.hello = false
    $timeout ->
      $scope.hello = true
    , 1000
    $timeout ->
      $scope.activeAnimation = $animationName
      $scope.lock = false
    , 2000

  $scope.isActiveAnimation = ($animationName) ->
    $scope.activeAnimation == $animationName

  $scope.isBye = () ->
    !$scope.hello

  $scope.isHello = () ->
    $scope.hello

