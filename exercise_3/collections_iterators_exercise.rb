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

# puts data





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


puts "SEARCH RESULTS"
puts "username            age"
puts "========            ==="

user_ages = (18..25)

data.select { |user| user[:user][:age] < 25 && user[:user][:age] > 18 } .each do |u|

data.select { |h| h[:user][:age] }.map { |h| h[:val] }

age = data.select { |i| i[:user][:age] >= 18 && i[:user][:age] <= 25 }
