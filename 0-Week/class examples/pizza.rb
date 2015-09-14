#creates a pizza object
class Pizza
	#initializes the variables
	def initialize(toppings, size, style)
		@toppings = toppings
		@size = size
		@style = style
	end
	#repeats back the order a person made
	def repeat_order
		puts "Your pizza will be #{@size} and #{@style} with #{@toppings.join(" and ")} for your toppings."
	end
end

#creates a person object
class Person
	#initializes the person's info
	def initialize(name, address, phone)
		@name = name
		@address = address
		@phone = phone
	end
	#allows the person to order a pizza
	def order
		@order_time = Time.now
		puts "What size pizza?"
		size = gets.chomp
		puts "What style do you want your pizza?"
		style = gets.chomp
		puts "What toppings do you want?"
		toppings = gets.chomp.split
		#creates new pizza
		pizza = Pizza.new(toppings, size, style)
		#repeats order by calling method from pizza
		pizza.repeat_order
	end
	#introduces yourself
	def introduce
		puts "Hello my name is #{@name}, pleased to meet you."
		#prompts user to order pizza
		puts "Do you want to order a pizza? (y/n)"
		choice = gets.chomp
		#check to see if they choose "y"
		if choice == "y"
			puts "Okay! I will call now."
			#runs the order method
			order
		else
			puts "Okay, maybe next time."
		end
	end
end
