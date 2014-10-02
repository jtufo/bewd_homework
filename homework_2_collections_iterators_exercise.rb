puts "=========================================="
puts "Problem 1"
puts "=========================================="

data = []

10.times  do |element|
  data.push(
    { 
      user: {
        id: element,
        email: "user_#{element}@gmail.com",
        username: "user_#{element}",
        age: rand(18..75)
      },

      tweets: [
        "I am user #{element}",
        "This is my second tweet"
      ]
    }
  )
end
# puts data[0]

puts data





puts "=========================================="
puts "Problem 2"
puts "=========================================="

data[2][:tweets].each { |element| puts "tweets: #{element}" }





puts "=========================================="
puts "Problem 3"
puts "=========================================="

puts data.reverse!





puts "=========================================="
puts "Problem 4"
puts "=========================================="

index = data.find_index {|id| id[:user][:id] == 2}

puts "user_2 is at index #{index} in the data array"





puts "=========================================="
puts "Problem 5"
puts "=========================================="


