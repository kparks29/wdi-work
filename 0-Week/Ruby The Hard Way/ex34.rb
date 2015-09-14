animals = ['bear', 'python', 'peacock', 'kangaroo', 'whale', 'platypus']
location = ['1st', '2nd', '3rd', '4th', '5th', '6th']
def sentence(choice, animals, location)
 puts "The animal #{choice} is the #{location[choice]} animal and is a #{animals[choice]}"
end

choice = 1
sentence(choice, animals, location)

choice = 2
sentence(choice, animals, location)

choice = 0
sentence(choice, animals, location)

choice = 3
sentence(choice, animals, location)

choice = 4
sentence(choice, animals, location)

choice = 2
sentence(choice, animals, location)

choice = 5
sentence(choice, animals, location)

choice = 4
sentence(choice, animals, location)