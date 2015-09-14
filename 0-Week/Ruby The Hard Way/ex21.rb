def add(a, b)
	puts "ADDING #{a} + #{b}"
	a + b
end

def subtract(a, b)
	puts "SUBTRACTING #{a} - #{b}"
	a - b
end
def multiply(a, b)
	puts "MULTIPLYING #{a} * #{b}"
	a * b
end
def divide(a, b)
	puts "DIVIDING #{a} / #{b}"
	a / b
end

puts "lets do some math with just functions!"

age = add(30, 5)
height = subtract(78,4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "age #{age}, height #{height}, weight #{weight}, iq #{iq}"

# A PUZZLE FOR THE EXTRA CREDIT, TYPE IT IN ANYWAYS
puts "Here is a puzzle"

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what} can you do it by hand?"



