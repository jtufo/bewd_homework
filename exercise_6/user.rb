$session = nil

class User
  attr_accessor :username, :password, :tweet_content

  $user_list = []

  def initialize(username, password)
    if username.nil? || password.nil?
      puts "This is an error"
    else
      @username = username
      @password = password
      @tweet_content = []

      # or, which puts it into the array
      # $user_list << User.new(username, password)
    end
  end

  def self.sign_up(username, password)
    User.new(username, password)

    $user_list.push({username: username, password: password})
  end

  # Self is calling a class method
  def self.sign_in(username, password)

    $user_list.each do |user|
      if user[:username] == username && user[:password] == password
        puts "Good Job"

        $session = user
        break
      else
        puts "Try again"
      end
    end
  end

  def tweet(tweet_content)
    new_tweet = Twitter.add_tweet(tweet_content)
    @tweet_content.push({tweet_content: new_tweet})
  end



  def sign_out 
    if $session != nil
      puts "See ya #{username}"
      $session = nil
    else
      puts "You're not signed in"
    end
  end
end
