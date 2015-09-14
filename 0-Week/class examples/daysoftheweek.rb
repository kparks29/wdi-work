days_of_the_week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
temp = days_of_the_week.pop
days_of_the_week = days_of_the_week.unshift(temp)
puts days_of_the_week

puts

days_of_the_week.shift
days_of_the_week.pop
puts days_of_the_week

puts

puts days_of_the_week.sort