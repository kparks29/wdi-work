//Questions
//1. Why do I have to set newItemName and newItemTopic to "" in order for the error message to be generated the first time around? Shouldn't they already equal ""? Or should I test for "null" in my if statement?

function QappCtrl ($scope) {
  $scope.items = [

  ]

  $scope.newItemName = ""
  $scope.newItemTopic = ""
  $scope.newItemTime = ""
  $scope.addItem = function() {
    if ($scope.newItemName == "" || $scope.newItemTopic == "") {
      $scope.errorMessage = "Whoops! Please include your name and the topic  :]"
    }
    else {
      if ($scope.newItemTime == "") {
        $scope.items.push({name: $scope.newItemName, topic: $scope.newItemTopic, time: "Unestimated"})
        $scope.newItemName = "";
        $scope.newItemTopic = "";
      } else {
        $scope.items.push({name: $scope.newItemName, topic: $scope.newItemTopic, time: $scope.newItemTime, estimated: $scope.timeCalc()})
        $scope.newItemName = "";
        $scope.newItemTopic = "";
        $scope.newItemTime = "";
      }
      $scope.errorMessage = ""
    }
  }
var finishTime = 0;
var date = new Date;
var hour = 0;
var min = 0;
  $scope.timeCalc = function() {
    if ($scope.items.length == 0) {
      hour = date.getHours();
      min = date.getMinutes();

      $scope.estTime = "Active";
      console.log("1st time new time to add " + parseInt($scope.newItemTime));
      console.log("1st time current time " + parseInt(min));
      finishTime = parseInt($scope.newItemTime) + parseInt(min);
      console.log(finishTime);

      return $scope.estTime;
    } else {
      
      $scope.estTime = finishTime;
      console.log($scope.estTime + " estimated time")
      console.log(finishTime + " before");
      finishTime += parseInt($scope.newItemTime);
      console.log(finishTime + " after");
      return $scope.timeClean($scope.estTime, hour);
    }
  }

  $scope.timeClean = function(min, hour) {
    console.log(min + " " + hour);
    hour += Math.floor(min / 60);
    min = min % 60;

    var ampm = hour > 12 ? "PM" : "AM";
    hour = hour % 12;
    hour = hour ? hour : 12; // zero = 12
    min = min > 9 ? min : "0" + min;
    $scope.estTime = hour + ":" + min + " " + ampm;

    return $scope.estTime;
  }

  $scope.removeItem = function(item) {
    var itemIndex = $scope.items.indexOf(item);
    $scope.items.splice(itemIndex,1);
  }

  $scope.counter = 0
}