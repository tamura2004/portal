'use strict'

class MainController

angular.module('learnMeanApp')
.config ($routeProvider) ->
  $routeProvider.when '/',
    templateUrl: 'modules/main'
    controller: 'MainController'
    controllerAs: 'ctrl'
    reloadOnSearch: false
.controller 'MainController', MainController