exports = module.exports = {};

//create method parse
exports.parse = function(args, defaults, replacements) {
  var options = {}
  //checking defaults to be an object
  //checking that defaults is not an array
  if(typeof defaults === "object" && !(defaults instanceof Array)) {
    options = defaults; //sets the default values to options
  }
  //checking that replacements is an object and not an array
  if (typeof replacements === "object" && !(defaults instanceof Array)) {
    //loop through all the args passed in
    for (var i in args) {
      var arg = args[i];
      //check to see if there is a '-' at the beginning but not one at the second character
      if(arg.charAt(0) === "-" && arg.charAt(1) != "-") {
        arg = arg.substr(1); //grab everything after the '-'
        //see if there is a '=' in the substring, indicating that there is a value
        if (arg.indexOf("=") !== -1) {
          arg = arg.split("="); //turn the sting into an array of keys and a value
          var keys = arg.shift(); //pull off keys and leaves the value in arg
          var value = arg.join(""); //turns the value into a string

          arg = keys.split(""); //splits the keys into separate keys if there are more than one
          var key = arg.pop(); //take off the last key in the array

          //check to see if the last key is in the replacements array
          if(replacements.hasOwnProperty(key)) {
            key = replacements[key]; //set the key to the full string in the replacements array
          }

          args.push("--" + key + "=" + value); //add the key value pair in array
        }

        //if there is no values simply split up the args into an array
        else {
          arg = arg.split("");
        }

        //go through each arg add check to see if it is in replacements as a shorthand
        arg.forEach(function(key){
          if (replacements.hasOwnProperty(key)) {
            key = replacements[key];
          }
          args.push("--" + key); //add this to our array of args
        });
      }
    }
  }

  //loop through each arg in the array args
  for (var i in args) {
    var arg = args[i];

    //check to see if the first 2 characters of the string start with '--'
    if (arg.substr(0,2) === "--") {
      //grab everything after the '--'
      arg = arg.substr(2);

      //check to see if there is an equal sign in the remaining string
      if (arg.indexOf("=") !== -1) {        
        arg = arg.split("="); //split the string into an array removing the '=' in the process
        var key = arg.shift(); //remove the first item in the array and set it to key
        var value = arg.join(""); //set the remaining array elements to value

        if (/^[0-9]+$/.test(value)) { //check to see if the value is equal to an integer
          value = parseInt(value,10); //conver the value to an integer
        }
        options[key] = value; //add the key value pair to the options object
      }
      else {
        //if there is no '=' in the arg string then there is no value
        //the key will be the whole substring
        var key = arg;
        options[key] = true;  //set the options[key] to a bool of true
      }
    }
  }
  return options; //return the options object
}

