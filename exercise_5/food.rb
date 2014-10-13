class Food
  attr_accessor :name, :noise, :food_color, :food_exp

  def initialize(name, noise, food_color, food_exp)
    if name.nil? || noise.nil?
      puts "This is an error"
    else
      @name = name
      @noise = noise
      @food_color = food_color
      @food_exp = food_exp
    end
  end

  def color
    food_color
  end

  def expiration
    if food_exp > 30
      puts "That's nasty, it's rotten"
    else
      puts "Eat it up, #{name} is still good"
    end
  end
end
