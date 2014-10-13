class User
  attr_accessor :first_name, :last_name, :username, :password

  $user_list = []

  def initialize(first_name, last_name, username, password)
    if first_name.nil? || last_name.nil? || username.nil? || password.nil?
      puts "This is an error"
    else
      @first_name = first_name
      @last_name = last_name
      @username = username
      @password = password

      $user_list.push({username: username, password: password})
    end
  end

  def sign_in
    puts "What is your username?"
    $entered_username = gets.chomp.to_s

    puts "What is your password?"
    $entered_password = gets.chomp.to_s

    $user_list.each do |username, password|
      if $entered_username == @username && $entered_password == @password
        puts "Good Job"
      else
        puts "Incorrect! Your username of password is incorrect."
      end
    end
  end

end
