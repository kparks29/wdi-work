def newyears
	puts "Give us a countdown number: "
	counter = gets.chomp.to_i

	while counter > 0
		puts "#{counter}!!!"
		puts "Happy New Year!!!!!!!!!!" if counter == 1
		counter -= 1
	end
	again
end


def agegetter
	puts "What is your age?"
	age = gets.chomp.to_i

	if age == 29
		puts "Congradulations, you've reached your maximum age!!"
	else
		puts "Thats cool, you are #{age}"
	end
	again
end

def namespitter
	names = ["Jen", "John", "Ira"]

	fill = Proc.new {|name| puts name}
	names.each &fill
	again
end

def addnumbers
	puts "First number to add:"
	num1 = gets.chomp.to_i
	puts "Second number to add:"
	num2 = gets.chomp.to_i

	total = num1 + num2

	puts "Here is the sum of your numbers: #{total}"
	again
end

def chooser
	puts "To run Newyears Countdown type '1'"
	puts "To run Age Phrase type '2'"
	puts "To run Instructors Name type '3'"
	puts "To add 2 numbers together type '4'"
	choice = gets.chomp.to_i

	case choice
	when 1
		newyears
	when 2
		agegetter
	when 3
		namespitter
	when 4
		addnumbers
	else
		puts "Invalid Choice, choose again"
		chooser
	end
end

def again
	puts "Do another? y/n"
	yesorno = gets.chomp.capitalize
	if yesorno == "Y"
		chooser
	end
end


chooser



		

