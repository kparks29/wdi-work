def prompt()
	print "> "
end

def final_room()
	puts "This room is full of treasure.  How much do you take? (0-1000)"

	prompt; choice = gets.chomp
	if choice.include? "0" or choice.include? "1" or choice.include? "2" or choice.include? "3" or choice.include? "4" or choice.include? "5" or choice.include? "6" or choice.include? "7" or choice.include? "8" or choice.include? "9"
		how_much = choice.to_i()
	else
		puts "Man, learn to type a number."
    final_room()
	end

	if how_much < 500
		puts "Nice, you're not greedy, you win!  You also have $#{how_much}!!!!"
		Process.exit(0)
	else
		dead("You greedy bastard!")
	end
end

def danger_zone()
	  puts "There is a monster here."
 	  puts "The monster has a bunch of money."
  	puts "The monster is blocking a door."
  	puts "How are you going to move the monster? (fight it, scare it, tickle it, run away)"
  	monster_moved = false

  	while true
  		prompt; choice = gets.chomp

  		if choice == "fight it"
  			dead("The monster looks at you then rips your face off.")
      elsif choice == "run away"
        puts "You ran away, but got lost."
        start()
  		elsif choice == "tickle it" or choice == "scare it" and not monster_moved
  			puts "The monster has moved from the door. You can go through it now. (open door)"
  			monster_moved = true
  		elsif choice == "tickle it" or choice == "scare it" and monster_moved
  			dead("The monster gets pissed off and chews your leg off.")
  		elsif choice == "open door" and monster_moved
  			final_room()
  		else
  			puts "I got no idea what that means."
        danger_zone()
  		end
  	end
end

def insanity()
	puts "Here you see Shawn T."
  	puts "He, stares at you and wants you to start the Assylum workout."
  	puts "Do you flee for your life or workout? (flee, workout)"

  	prompt; choice = gets.chomp

  	if choice.include? "flee"
  		start()
  	elsif choice.include? "workout"
  		dead("Well at least you are stronger!!")
  	else
  		insanity()
  	end
end

def dead(why)
	puts "#{why} Good job!"
	Process.exit(0)
end

def start()
	  puts "You are in a dark room."
    puts "There is a door to your right and left."
  	puts "Which one do you take? (left, right)"

  	prompt; choice = gets.chomp

  	if choice == "left"
  		danger_zone()
  	elsif choice == "right"
  		insanity()
  	else
  		dead("You stumble around the room until you starve.")
  	end
end

start()