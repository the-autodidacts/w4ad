var app = angular.module('work4aday', []);

  app.controller("PostController", function ($http) {
    thisController = this;
    csrf = $('meta[name=csrf-token]').attr('content')

    this.createJobposting = function () {
      console.log(thisController.newJobposting);
      $http({
        url: '/jobpostings',
        method: 'POST',
        data: {
          jobposting: thisController.newJobposting,
          authenticity_token: csrf
        }
      }).then(function (success){
        console.log(success);
      }, function (error){
        console.log(error);
      });
    };
});
