class Twitter

  attr_accessor :tweet_content

  @@tweets_list = []

  def initialize(tweet_content)
    @tweet_content = tweet_content
  end

  def self.all
    @@tweets_list
  end

  def self.add_tweet(tweet_content)
    Twitter.new(tweet_content)

    @@tweets_list.push({tweet_content: tweet_content})
  end

end
