## Animal is-a object Look at the extra credit
class Animal
end

## dog takes on animal attributes

class Dog < Animal

	def initialize(name)
		## set variables
		@name = name
	end
end

## cat takes on animal attributes
class Cat < Animal

	def initialize(name)
		## set variables
		@name = name
	end
end

## make class person (not an animal)
class Person

	def initialize(name)
		## initialize variables
		@name = name

		##person has a pet of some kind
		@pet = nil
	end

	attr_accessor :pet
end

#employee takes on person attributes
class Employee < Person

	def initialize(name, salary)
		##use name from person
		super(name)
		## initialize variables
		@salary = salary
	end
end

class Fish
end

class Salmon < Fish
end

class Halibut < Fish
end

##rover is a dog
rover = Dog.new("Rover")

##satan is a cat
satan = Cat.new("Satan")

## mary is a person
mary = Person.new("Mary")

## mary's pet is satan
mary.pet = satan

##frank is an employee
frank = Employee.new("Frank", 120000)

#frank's pet is rover
frank.pet = rover

flipper = Fish.new()
crouse = Salmon.new()
harry = Halibut.new()