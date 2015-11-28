var app = angular.module('work4aday', []);

  app.controller("PostController", function ($http) {
    thisController = this;
    csrf = $('meta[name=csrf-token]').attr('content')

    this.createJobposting = function () {
      $http({
        url: '/jobpostings',
        method: 'POST',
        data: {
          jobposting: thisController.newJobposting,
          authenticity_token: csrf
        }
      }).then(function (success){
        thisController.getJobpostings();
        // console.log(success);
      }, function (error){
        console.log(error);
      });
    };


    this.getJobposting = function () {
      console.log("I'm here");
      $http({
        url: '/jobpostings',
        method: 'GET'
      }).then(function (success){
        console.log(success);
      }, function (error){
        console.log(error);
      });
    };
    this.getJobposting();
  });
