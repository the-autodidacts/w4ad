var app = angular.module('work4aday', []);



///////////////////Header Controller//////////////////////////
  app.controller("HeaderController",['$http', function($http){
    var controller = this;
    //Get current_user from route
    $http.get('/session').success(function(data){
      //currrent_user comes back nested in current_user so we use data.current_user to unwrap
      controller.current_user = data.current_user
      console.log(controller);
    });
  }]);


////////////////////Post Controller/////////////////////////
  app.controller("PostController", function ($http) {
    var controller = this;

    // get authenticity_token from the DOM (rails injects it on load)
    csrf = $('meta[name=csrf-token]').attr('content')

    // create a job posting
    this.createJobposting = function () {
      $http({
        url: '/jobpostings',
        method: 'POST',
        data: {
          jobposting: controller.newJobposting,
          authenticity_token: csrf
        }
      }).then(function (success){
        console.log(success);
      }, function (error){
        console.log(error);
      });
    };


    this.getJobposting = function () {
      $http({
        url: '/jobpostings',
        method: 'GET'
      }).then(function (success){
        controller.jobposting = success.data.jobpostings
        console.log(success.data.jobpostings);
      }, function (error){
        console.log(error);
      });
    };
    this.getJobposting();
  });
