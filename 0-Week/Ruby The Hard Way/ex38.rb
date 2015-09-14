ten_things = "apples oranges crows telephone light sugar"

puts "wait there's not 10 things in that list, let's fix that."

stuff = ten_things.split(' ')
more = %w(Day Night Song Frisbee Corn Banana Girl Boy)

while stuff.length != 10
	next_one = more.pop()
	puts "Adding: #{next_one}"
	stuff.push(next_one)
	puts "There's #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1] #woah! fancy
puts stuff.pop()
puts stuff.join(' ') #what? cooL!
puts stuff.values_at(3,5).join('#') #super stellar!