day = 0
month = 0
age = 0
year = 0
name = ""


def calculate_age(year, month, day)
	age = Time.now.year - year
	if month == Time.now.month
		if day >= Time.now.day
			age -= 1
		end
	end
	if age < 65
		age = age.to_s
		age << " :)"
	end
	return age
end

def get_day(year, month, day)
	if month == Time.now.month 
		puts " "
		puts "What day were you born? (1-31)"
		day = gets.chomp.to_i
	end
	return calculate_age(year, month, day)
end

def format_name(name)
	return name.reverse
end



puts " "
puts "Hello,"
puts "What is your name?"
name = gets.chomp.capitalize
puts " "
puts "What year were you born?"
year = gets.chomp.to_i
puts " "
puts "What month were you born in? (1-12)"
month = gets.chomp.to_i
age = get_day(year, month, day)




puts " "
puts "Hi #{format_name(name)} you are #{age} years old!!"
puts " "



