class Cat
  def initialize (name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end


  def eats_at
    if @meal_time < 12
      return "#{@meal_time} AM"
    else
      return "#{@meal_time} PM"
    end
  end
  def meow
    return "My name is #{@name} and I eat at #{@meal_time}!"
  end

end



fluffins = Cat.new("Fluffins", "mice", 22)
whiskers = Cat.new("whiskers", "Fancy_Feast", 18)
mittens = Cat.new("Mittens", "canned_salmon", 20)

puts fluffins.meow
puts whiskers.meow
puts mittens.meow
