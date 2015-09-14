#Intro to CoffeeScript
CoffeeScript is a short-handed way of writing JavaScript, in a style similar to Ruby.  It is not ruby code nor is it understood natively by browsers, but instead is compiled down to raw JavaScript.

To add it to your project, add `gem 'coffee-rails'` to your Gemfile (if it's not there)then `bundle install`

(Rails 4 is super nice and tends to include this gem in `rails new`s)

With this gem included in your project, whenever you generate a new controller (using `rails generate`), the js file that is automatically created will have a `.js.coffee` extension.


###Syntax
Indentation is important, like it is in HAML and Python, and it uses a Ruby-like syntax.  CoffeeScript doesn’t require parentheses, curly braces, or semicolons, and has added a variety of ruby-like language (and, or, [1..5], etc.)

####Variables

**Defining variables eliminates the use of "var", and the declarations are hoisted:**

	beers = ["Heineken", "PBR", "Bud Lite", "Newcastle"]
	fridge = "full of beer"
	
compiles to
	
	var beers, fridge;

	beers = ["Heineken", "PBR", "Bud Lite", "Newcastle"];

	fridge = "full of beer";
	

####Conditionals & Loops

**Conditionals are easy to declare, usually in one line:**

	happyLorin = true if fridge == "full of beer""

compiles to
		
	var happyLorin;
	if (fridge === "full of beer") {
		happyLorin = true;
	}
	
	
**OR**
	
	
	if fridge == "full of beer" and beers.length > 0
		happyLorin = true
	
compiles to
	
	var happyLorin;
	if (fridge === "full of beer" && beers.length > 0) {
		happyLorin = true;
	}
	
**And loops:**

	while beers.length > 0 then drinkBeer()
	
compiles to

	while (beers.length > 0) {
		drinkBeer();
	}
	
	
**OR**
	
	
	for item in items
		console.log(item)
	
compiles to
	
	var item, _i, _len;
	for (_i = 0, _len = items.length; _i < _len; _i++) {
		item = items[_i];
		console.log(item);
	}
	
		
**OR**
	
	
	for i in [5..0]
		alert(i)
	
compiles to
	
	var i, _i;
	for (i = _i = 5; _i >= 0; i = --_i) {
		alert(i);
	}

	
**AND**
	
	
	for item in items when item isnt "PBR"
		console.log(item)
	
compiles to
	
	var item, _i, _len;
	for (_i = 0, _len = items.length; _i < _len; _i++) {
		item = items[_i];
		if (item !== "PBR") {
			console.log(item);
		}
	}
	

####Functions

**Functions look completely different:**

	drinkBeer = ->
		items.pop()
		
compiles to
	
	drinkBeer = function() {
		return items.pop();
	}
** Notice how the last line of a function is always returned


####Objects

**Objects are shorter too:**

	fridge = 
		beer: ["beer1", "beer2", "beer3", "beer4"]
		iceCream: ["chocolate", "vanilla", "pistachio"]
		consume: (item) ->
			item.pop()
			
compiles to
	
	var fridge;

	fridge = {
	  beer: ["beer1", "beer2", "beer3", "beer4"],
	  iceCream: ["chocolate", "vanilla", "pistachio"],
	  consume: function(item) {
	    return item.pop();
	  }
	};
	

####Additional Notes

**There's no more "this" but instead we use "@"**

	fridge = 
		beer: ["beer1", "beer2", "beer3", "beer4"]
		consumeBeer: () ->
			@beer.pop()

compiles to

	var fridge;

	fridge = {
	  beer: ["beer1", "beer2", "beer3", "beer4"],
	  consumeBeer: function() {
	    return this.beer.pop();
	  }
	};


**jQuery still works:**

	$('#div').click ->
		alert("clicked")

	complies to
	
	$('#div').click(function() {
		alert("clicked");
	});

**Our jQuery document.ready function:**
	
	$(document).ready(function() {});
	OR
	$(function() {});
	
can be denoted as:
	
	$ ->


<br><br><br>

-----
##Standalone coffeescript compilation
Using homebrew, install NodeJS:

	brew install node

Install NPM, Node's package manager:

	brew install npm
	--OR--
	curl https://npmjs.org/install.sh | sh

Install CoffeeScript:

	npm install -g coffee-script

**Compile command:**
	
	coffee -c scripts.js.coffee
