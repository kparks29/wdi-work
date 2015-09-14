puts " "
puts "What is your first name?: "
name = gets.chomp.capitalize
puts " "
puts "Hello #{name}"
if name == "Ken"
	puts "You Rock!"
end
puts " "
puts "Where are you from?:"
home = gets.chomp.capitalize
puts " "
puts "Ahh, so you are from #{home}"
if home == "Arizona"
	puts "Me Too!!"
end
puts " "

puts "What are your lucky numbers?: "
numbers = gets.chomp.split
puts " "

puts "I like your numbers: #{numbers}"
puts " "
