# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    dinosaurs = Dinosaur.create([{name: "Velociraptor", other_name: "Raptor", diet: "Meat", description: "Velociraptor is a dromaeosaurid theropod carnivore. Velociraptors are highly intelligent pack hunters. They are also able to open doors."}, {name: "Triceratops", other_name: "Trike", diet: "Plants", description: "Triceratops has a huge frilled head with horns over each eye that can reach over 4 feet long. Triceratops has a third, smaller horn on its nose. These can be fearsome weapons against a predator."}, {name: "Tyrannosaurus rex", other_name: "T-Rex", diet: "Meat", description: "We have a T-Rex."}])