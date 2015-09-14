class Blender
  attr_accessor :blender_on

  def initialize
    @blender_on = false
  end

  def add_ingredients(hummus_ingredients)
    @hummus_ingredients = hummus_ingredients
    puts "Ingredients added."
  end

  def blend()
    if blender_on
      puts @hummus_ingredients.keys.join.delete(' ').split("").shuffle.join
    else
      puts "Blender is off, turn it on first."
    end
  end

  def switch_on
    @blender_on = true
    puts "Blender is on."
  end

  def switch_off
    @blender_on = false
    puts "Blender is off."
  end

end



hummus = Blender.new
hummus.add_ingredients({'tahini' => '3 tbsp', 'garbonzo beans' => '16 oz', 'olive oil' => '1/3 cup', 'garlic' => '3 cloves', 'salt' => '1 tsp', 'roasted red bell peppers' => '6 oz', 'jalapeno seeded and diced' => '1', 'chopped cilantro' => '3 tbsp', 'paprika' => '1 tsp', 'chopped onion' => '3 tbsp', 'fresh cracked black pepper' => '1 tsp'})
hummus.switch_on
hummus.blend
hummus.switch_off


