angular.module("RatingTutorial", [])
	.controller("RatingCtrl", function($scope) 
{
	$scope.rating = 3;
})
	.directive("myRating", function()
{
	//return an object which defines the directive
	return {
		restrict: "A",
		template: '<ul class="rating"><li x-ng-repeat="star in stars" class="filled">\u2605</li></ul>',
		scope: {
			ratingValue: "=",
			max: "="
		},
		link: function(scope, elem, attrs) 
		{
			function updateStars() 
			{
				scope.stars = [];
				for(var i=0; i<scope.ratingValue; i++) 
				{
					scope.stars.push({});
				}
			}
			scope.$watch('ratingValue', function(oldVal, newVal) 
			{
				if (newVal) 
				{
					updateStars();
				}
			});
		}

	};
});