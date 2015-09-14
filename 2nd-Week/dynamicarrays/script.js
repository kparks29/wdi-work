
var sideLength = 10;
var cells = new Array(sideLength);


for (var row =0; row < sideLength; ++row) {

	var newOne = new Array(sideLength);
	for (var col =0; col<sideLength; ++col) {
		var nextOne = new Array(sideLength);
		for (var depth=0; depth<sideLength; ++depth) {
			var anotherOne = new Array(sideLength);
			for (var layer=0; layer<sideLength; ++layer) {
				var whoa = new Array(sideLength);
				for (var layer2=0; layer2<sideLength; ++layer2) {
					whoa[layer2] = ''
				}
				anotherOne[layer] = whoa
			}
			nextOne[depth] = anotherOne
		}
		newOne[col] = nextOne;
	}
	cells[row] = newOne;
}

function myCtrl($scope) {
	$scope.cells = cells;
}