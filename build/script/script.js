var app;

app = angular.module("angular-animate", []);

app.controller("animate-controller", function($scope, $timeout, $log) {
  $scope.activeAnimation = "animat0r";
  $scope.hello = false;
  $scope.lock = false;
  $scope.setActiveAnimation = function($animationName) {
    if ($scope.lock) {
      return;
    }
    $log.info($animationName);
    $scope.lock = true;
    $scope.activeAnimation = "";
    $scope.hello = false;
    $timeout(function() {
      return $scope.hello = true;
    }, 1000);
    return $timeout(function() {
      $scope.activeAnimation = $animationName;
      return $scope.lock = false;
    }, 2000);
  };
  $scope.isActiveAnimation = function($animationName) {
    return $scope.activeAnimation === $animationName;
  };
  $scope.isBye = function() {
    return !$scope.hello;
  };
  return $scope.isHello = function() {
    return $scope.hello;
  };
});
