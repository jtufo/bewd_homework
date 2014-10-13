#### Write a program that asks the user for her name and greets them with her name.

puts "Hey what's your name?"
name = gets.chomp
puts "Nice to meet you #{name}"

#### Change the previous program such that only the users Jack or Jill are greeted
#### with their names.

puts "What's your name?"

first_name = gets.chomp

if first_name.downcase == "joe" || first_name.downcase == "jane"
  puts "Nice to meet you #{first_name}"
else
  puts "Take a hike stranger"
end

#### Write a program that asks the user for a number n and prints the sum of the
#### numbers 1 to n

puts "Can I have a number?"

x = 0
n = gets.chomp.to_i
sum = 0

while x < n  do
   x = x + 1
   sum = sum + x
end

puts "The sum of 0..n values is #{sum}"

#### Write a program that asks the user for a number n and gives him the possibility
#### to choose between computing the sum and computing the product of 1,...,n.

sum = 0
x = 0

puts "Can I have a number?"
n = gets.chomp.to_i
puts "Do you want to Add or Multiply?"
answer = gets.chomp

if answer == "add"
  while x < n
     x = x + 1
     sum = sum + x
  end
elsif answer == "multiply"
  sum = 1
  x = 1
  while x < n
     x = x + 1
     sum = sum * x
  end
end

puts "Your sum is #{sum}"

#### Write a guessing game where the user has to guess a secret number. After
#### every guess the program tells the user whether his number was too large or 
#### too small. At the end the number of tries needed should be printed. The user 
#### should get three tries.

puts "Guess my favorite number, from 1-25. You only have 3 guesses"
f_number = rand(1..25)

3.times do
  guess = gets.chomp.to_i
  
  if guess < f_number
    puts "You're guess is to low"
  elsif guess > f_number
    puts "You're guess is to high"
  elsif guess == f_number
    puts "You got it! Nice work!"
    break
  end
end

puts "Correct answer is... #{f_number}"

#### Sparkle Magic
#### Write a function that takes a list of strings an prints them, one per line, in a 
#### rectangular frame. For example the list ["Hello", "World", "in", "a", "frame"] gets
#### sparkle_magic = ["Hello", "World", "in", "a", "frame"]

sparkle_length = (sparkle_magic.max_by  {|sparkle_length| sparkle_length.length}).length

puts sparkle_length

puts "*" * sparkle_length * 2

sparkle_magic.each do |line|
  puts "* " + line + " "*(sparkle_length - line.length) + " *"
end

puts "*" * sparkle_length * 2


#### Printing out modulus numbers
#### Make a program that prints the numbers from 1 to 75, but for multiples of 3, 
#### instead of printing the number, print “Bewd”. For multiples of 5, print “Rocks”. 
#### For multiples of 3 and 5, print “BewdRocks”.

number_range = (1..75)

number_range.each do |i|
  divisibleBy3 = i % 3 == 0
  divisibleBy5 = i % 5 == 0

  if divisibleBy3
    puts "fizz"
  elsif divisibleBy5
    puts "buzz"
  elsif !divisibleBy3 && !divisibleBy5
    puts "fizzbuzz"
  end
end
