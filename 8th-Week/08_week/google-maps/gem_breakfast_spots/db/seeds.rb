# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

spots = Spot.create([
	{latitude: 34.0128358, longitude: -118.495338, address:	"1520 2nd St, Santa Monica, CA", description: "General Assembly -- where there's no menu, and your breakfast is probably coffee.", title: "GA"},
	{latitude: 33.9927534, longitude: -118.4427295, address:	"13322 W. Washington Blvd., Culver City, CA", description: "Red Bread was launched in January of 2012 to bring whole, natural and artisanal food to the westside of Los Angeles. Wild Yeasted Sourdough breads and pastries were our first offering and remain at the heart of the eGrocer. We believe that bread should be nutritional and delicious. All it requires is good ingredients, care and time. We extend that belief to all our foods, constantly striving to bring the fields to your door.", title: "Red Bread"},
	{latitude: 34.0136367, longitude: -118.4937981, address: "395 Santa Monica Place Santa Monica, CA",	description: "The Curious Baker is a local artisan bakery and smoothie bar where friends, family and enthusiastic food lovers come together to eat delicious homemade bread, pastries, & smoothies in a warm casual atmosphere. They provide quality driven, hand-crafted food, while supporting and nurturing relationships with local farmers and producers. They are proud to be a part of Southern California’s growing vibrant food community.", title: "Curious Baker"},
	{latitude: 34.033978, longitude: -118.479384, address: "2408 Wilshire Blvd, Santa Monica, CA", description: "Bru's Wiffle reinvents the classic Belgian waffle with unique flavor and topping combinations. Located in Santa Monica, CA.", title: "Bru's Wiffle"},
	{latitude: 34.0122222, longitude: -118.4946298, address: "1540 2nd St Santa Monica, CA", description: "With so many options, mornings have never been tastier. From wholesome choices like Fruit & Maple Oatmeal and the Egg White Delight McMuffin to the savory Sausage Biscuit to the sweet McGriddles sandwich, you'll find exactly what you need to start your morning off just right.", title: "McDonald's"}])