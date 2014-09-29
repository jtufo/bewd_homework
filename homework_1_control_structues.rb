## Difficulty * ##

x = 0
sum = 0

while x < 10  do
   x = x + 1
   sum = sum + x
end

puts "The sum of 0..10 values is #{sum}"

## Difficulty ** ##

x = 0
n = 45
sum = 0

while x < n  do
   x = x + 1
   sum = sum + x
end

puts "The sum of 0..n values is #{sum}"

## Difficulty ** ##

x = 0

while x < 10
  x = x + 1  
  puts "fakeuser_#{x}" 
end

## Difficulty *** ##

x = 0

while x < 10
  x = x + 1

  if x.odd?
    parity = "odd"
  else
    parity = "even"
  end

  puts "fakeuser_#{x}_#{parity}" 
end

## Extra Credit 1 ##

require 'prime'

x = 0

while x < 10
  x = x + 1

  if x.prime?
    puts "#{x}"
  end 
end

## Extra Credit 2 ##
require 'prime'
puts Prime.first(10)
