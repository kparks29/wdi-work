angular.module("MovieThing", [])
	.controller("MoviesCtrl", function($scope, $http){
		$scope.findMovies = function() {
			$http.get("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=rg7dg9jee5kyw8k3m5y82cpz&q="+$scope.search).success(function(data, status){
				$scope.movies = data.movies;
			});
		}
		

	});	
