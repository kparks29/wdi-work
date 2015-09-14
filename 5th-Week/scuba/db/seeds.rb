# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

trips = Trip.create([{location: "Fiji", dives: 6, description: "Explore pristine reefs and enjoy drinks with umbrellas in them."},
{location: "Sydney", dives:	2, description:	"After your dive, relax on Bondi Beach or visit the lovely Opera House."},
{location: "Sea World", dives: 0, description:	"Not ready to suit up just yet? Watch the pros swim around while you buy Shamu souvenirs."}])