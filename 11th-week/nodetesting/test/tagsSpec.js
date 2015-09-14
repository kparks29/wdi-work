var expect = require("chai").expect; //pulls in chai library
var tags = require("../lib/tags.js"); //running tests on tags.js file

//opening describes
describe("Tags", function() {
  //writing test for parse method
  describe("#parse()", function(){


    it("should parse long formed tags", function() {
      var args = ["--depth=four", "--hello=world"];  //starting args that we want to pass in
      var results = tags.parse(args); //give tags the property parse and pass in args

      //testing to see if we get string results and it parses correctly
      expect(results).to.have.a.property("depth", "four"); 
      expect(results).to.have.a.property("hello", "world");
    });


    it("should parse number strings into integers", function() {
      var args = ["--depth=4", "--hello=world"]; //make 1 arg an int not a string
      var results = tags.parse(args);

      expect(results).to.have.a.property("depth", 4);
      expect(results).to.not.have.a.property("depth", "4"); //it should not be a string
      expect(results).to.have.a.property("hello", "world");
    });


    it("should fallback to defaults", function() {
      var args = ["--depth=4", "--hello=world"];
      var defaults = {depth: 2, foo: "bar"}; //setting default key/values our object will have
      var results = tags.parse(args, defaults);  //running the parse method on tags

      var expected = { //expected results
        depth: 4,
        foo: "bar",
        hello: "world"
      };

      expect(results).to.deep.equal(expected);  //deep equals means "==="
    });


    it("should accept tags without values as a bool", function(){
      var args = ["--searchContents"];
      var results = tags.parse(args);

      expect(results).to.have.a.property("searchContents", true);
    });


    it("should accept short form tags", function() {
      var args = ["-sd=4", "-h"];
      var replacements = {
        s: "searchContents",
        d: "depth",
        h: "hello"
      };

      var results = tags.parse(args, {}, replacements);
      var expected = {
        searchContents: true,
        depth: 4,
        hello: true
      };

      expect(results).to.deep.equal(expected);
    });
  });
});
