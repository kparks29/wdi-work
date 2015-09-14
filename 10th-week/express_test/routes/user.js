
/*
 * GET users listing.
 */



//have to wrap this function because we are receiving db
exports.list = function(db, phantom) {
	return function(req, res) {
		var collection = db.get("users");
		collection.find({},{}, function(e,docs){
			res.render("users", {users: docs});
		});

		phantom.create(function(ph) {
			console.log(ph);
	   	ph.createPage(function(page) {

		    page.open("http://yahoo.com", function(status) {
		    	console.log("stat: " + status);
		      // Evaluate the rendered page
		      page.evaluate(function(){
		      	return document.getElementsByTagName("body")[0].innerHTML;
		      }, function(result){
		      	console.log(result);
		      });
		    });
		  });

	  });
	}
}

exports.beers = function(db) {
	return function(req, res) {
		var breweries, beers = {};
		var collection = db.get("beers");
		var collection2 = db.get("breweries");
		collection.find({},{}, function(e, docs){
			beers = docs;
			if (breweries != null) {
				myRender();
			}
		});
		collection2.find({},{}, function(e, docs){
			breweries = docs;
			if (beers != null) {
				myRender();
			}
		});
		function myRender() {
			for (var i=0; i < beers.length; i++) {
				for (var j=0; j < breweries.length; j++) {
					if (breweries[j]._id == beers[i].brewery_id) {
						beers[i].brewery = breweries[j];
						breweries[j].beers.push(beers[i]);
					}
				}
			}
			res.render("beers", {beers: beers, breweries: breweries});
		}
	}
}