'use strict'

angular.module('learnMeanApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'ngAnimate',
])
  .config ($locationProvider) ->
    $locationProvider.html5Mode true