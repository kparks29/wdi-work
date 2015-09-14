var tog = 'O';

function myController($scope) {
	$scope.ar = [0,1,2];
	$scope.toggler = function(i,j) {
		var cell = document.getElementById('cell' + i + '-' + j);
		if (cell.innerHTML == "") {
			tog = (tog == 'X' ? 'O' : 'X');
			cell.innerHTML = tog;
		}
	};

}

