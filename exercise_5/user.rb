class User
  attr_accessor :first_name, :last_name, :age, :email, :meals_eaten

  def initialize(first_name, last_name, email, age)
    if first_name.nil? || last_name.nil? || email.nil? || age.nil?
      puts "This is an error"
    else
      @first_name = first_name
      @last_name = last_name
      @email = email
      @age = age
      @meals_eaten = 0
    end
  end

  def full_name 
    "#{first_name} #{last_name}"
  end

  def eat(food)
    puts food.noise
    puts food.color
    puts food.expiration
    @meals_eaten += 1
    puts "You've eaten a total of #@meals_eaten."
  end
end

