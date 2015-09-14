#add two number together
def add
	#assign num1 and num2 from the results of the method numbers
	num1, num2 = numbers
	#add the numbers
	puts "\033[1;32m#{num1 + num2}\033[0m\n"
	#run the method continue and that runs the program again
	continue
end

#subtract two number 
def sub 
	#assign num1 and num2 from the results of the method numbers
	num1, num2 = numbers
	#subtracts the numbers
	puts "\033[1;32m#{num1 - num2}\033[0m\n"
	#run the method continue and that runs the program again
	continue
end

def mult
	#assign num1 and num2 from the results of the method numbers
	num1, num2 = numbers
	#multiplies the numbers
	puts "\033[1;32m#{num1 * num2}\033[0m\n"
	#run the method continue and that runs the program again
	continue
end

def divide
	#assign num1 and num2 from the results of the method numbers
	num1, num2 = numbers
	#divides the numbers
	puts "\033[1;32m#{num1.to_f / num2.to_f}\033[0m\n"
	#run the method continue and that runs the program again
	continue
end

def exponent
	#assign num1 and num2 from the results of the method numbers
	num1, num2 = numbers
	#gets the exponent
	puts "\033[1;32m#{num1**num2}\033[0m\n"
	#run the method continue and that runs the program again
	continue
end

def squareroot
	puts "What number do you want to take the squareroot of?"
	num1 = gets.chomp
	#checks to see if the input is a number
	num1 = checkfloat(num1)
	#gets the squareroot
	puts "\033[1;32m#{Math.sqrt(num1)}\033[0m\n"
	#run the method continue and that runs the program again
	continue
end

def cosine
	puts "What number do you want to take the cosine of in radians?"
	num1 = gets.chomp
	#checks to see if the input is a number
	num1 = checkfloat(num1)
	#gets the cosine
	puts "\033[1;32m#{Math.cos(num1)}\033[0m\n"
	#run the method continue and that runs the program again
	continue
end

def sine
	puts "What number do you want to take the sine of in radians?"
	num1 = gets.chomp
	#checks to see if the input is a number
	num1 = checkfloat(num1)
	#gets the sine
	puts "\033[1;32m#{Math.sin(num1)}\033[0m\n"
	#run the method continue and that runs the program again
	continue
end

#gets the tangent
def tangent
	puts "What number do you want to take the tangent of in radians?"
	num1 = gets.chomp
	#checks to see if the input is a number
	num1 = checkfloat(num1)
	#prints the tangent
	puts "\033[1;32m#{Math.tan(num1)}\033[0m\n"
	#run the method continue and that runs the program again
	continue
end

#asks user for 2 numbers
def numbers
	puts "What is your first number?"
	num1 = gets.chomp
	#checks to see if the number is a number not a letter by running checkfloat
	num1 = checkfloat(num1)
	puts "What is your second number?"
	num2 = gets.chomp
	#checks to see if the number is a number not a letter by running checkfloat
	num2 = checkfloat(num2)
	#returns both numbers back to the original request
	return num1, num2
end


#asks the user if it wants to run the program again
def continue
	#blank line
	puts
	puts "Do another? type 'y' for yes or type 'q' to quit"
	#asks user for input and makes it automatically downcase
	yesorno = gets.chomp.downcase
	#checks for y or q
	if yesorno == "y"
		#clears the terminal screen
		puts "\e[H\e[2J"
		chooser
	elsif yesorno == 'q'
		#clears screen
		puts "\e[H\e[2J"
		puts "\033[5;35mGood-bye!\033[0m\n"
		#end the program
	else
		#if user types something wrong it lets them know and re-runs the program
		puts "\e[H\e[2J"
		puts "\033[1;31mInvalid Choice, choose again\033[0m\n"
		continue
	end
end

#check to see if the number is a number
def checkfloat(num)
	#checks if it is a float first
	if num.to_f.to_s == num
		#returns number back as a float
		return num.to_f
	#checks if it is a integer
	elsif num.to_i.to_s == num
		#returns number back as a float
		return num.to_f
	else
		#clears screen
		puts "\e[H\e[2J"
		#ask the user for the new number if the first one was not a number
		puts "\033[1;31mHey Thats not a number. Try again.\033[0m\n"
		new_num = gets.chomp
		#check to see if the new input is a a number
		checkfloat(new_num)
	end
end

#main method for the program, asks the user what they would like to do
def chooser
	puts "To add two numbers type................... 'add'"
	puts "To subtract two numbers type.............. 'sub'"
	puts "To multiply two numbers type.............. 'mult'"
	puts "To divide two numbers type................ 'div'"
	puts
	puts "Or to access the advanced features type... 'adv'"
	puts
	puts "To quit type.............................. 'q'"
	#gets input
	choice = gets.chomp.downcase
	#clears terminal
	puts "\e[H\e[2J"

	#evaluates the user's choice
	case choice
	when "add"
		add
	when "sub"
		sub
	when "mult"
		mult
	when "div"
		divide
	when 'adv'
		advanced
	when "q"
		puts "\033[5;35mGood-bye!\033[0m\n" #ends program
	else
		#if user types something wrong it lets them know and re-runs the program
		puts "\033[1;31mInvalid Choice, choose again\033[0m\n"
		chooser
	end
end

#the advanced version of the calculator
def advanced
	puts "To do an exponent with two numbers type... 'exp'"
	puts "To take a square root of a number type.... 'sqrt'"
	puts "To take a cosine of a number type......... 'cos'"
	puts "To take a sine of a number type........... 'sin'"
	puts "To take a tagent of a number type......... 'tan'"
	puts
	puts "Or to access the basic features type...... 'bas'"
	puts
	puts "To quit type.............................. 'q'"
	#gets input
	choice = gets.chomp.downcase
	#clears terminal
	puts "\e[H\e[2J"

	#evaluates user's choice
	case choice
	when "exp"
		exponent
	when "sqrt"
		squareroot
	when "cos"
		cosine
	when "sin"
		sine
	when "tan"
		tangent
	when 'bas'
		chooser
	when "q" 
		puts "\033[5;35mGood-bye!\033[0m\n" #ends program
	else
		#if user types something wrong it lets them know and re-runs the program
		puts "\033[1;31mInvalid Choice, choose again\033[0m\n"
		advanced
	end
end

#clears screen on start
puts "\e[H\e[2J"
#starts the program and runs the main method chooser
chooser