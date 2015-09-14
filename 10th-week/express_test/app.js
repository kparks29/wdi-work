
/**
 * Module dependencies.
 */

var express = require('express');
var routes = require('./routes');
var user = require('./routes/user');
var http = require('http');
var path = require('path');

//new code
var mongo = require('mongodb'); //database driver
var monk = require('monk'); //similar to rails gem 'mongoid'
var db = monk('localhost:27017/wdi_shopping_mongo_development');
var db2 = monk('localhost:27017/rails_on_tap_development')
var phantom = require('phantom');

var app = express();

// all environments
app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.methodOverride());
app.use(express.cookieParser('your secret here'));
app.use(express.session());
app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));

// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

app.get('/', routes.index);
app.get('/users', user.list(db, phantom));
app.get('/beers', user.beers(db2));

app.get('/xyz', function(req, res){
	var collection = db.get('users');
	collection.find({},{}, function(e,docs){
		res.end(JSON.stringify(docs));
	});
});

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});
