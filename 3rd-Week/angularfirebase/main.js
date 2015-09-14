angular.module("MyApp", ["firebase"])
	.controller("MyController", function($scope, $firebase) {
		var issuesRef = new Firebase("https://issueskendrick.firebaseio.com/");
		$scope.issues = $firebase(issuesRef);
		console.log($scope.issues);


		

		$scope.addIssue = function(){

				issuesRef.push({title:$scope.title, body:$scope.body});
				$scope.title = "";
				$scope.body = "";

		}

		$scope.remove = function(id) {
			var ref = new Firebase("https://issueskendrick.firebaseio.com/" + id.$id);
			console.log(id.$id);
			//ref.remove();
		}
	});