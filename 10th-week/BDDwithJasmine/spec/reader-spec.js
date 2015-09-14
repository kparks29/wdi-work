var request = require('request');

describe("page exists", function(){
  it("should respond with 200 code", function(done) {
    request("http://localhost:3000/", function(error, response, body){
      expect(response.statusCode).toEqual(200);
      done();
    });
  });
});

describe("click on test", function(){
  it("it should make an alert", function(done) {
    request("http://localhost:3000/", function(error, response, body){
      click();
      expect().toEqual();
      done();
    });
  });
});