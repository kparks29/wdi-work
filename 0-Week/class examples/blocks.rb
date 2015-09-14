tweet = "We ate fifty cheeseburgers for lunch"
puts "#{tweet.split.select{|word| word.length > 3}.map{|word| "#" + word}}"
