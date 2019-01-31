require 'readline'

module TweetConsole
  def self.list_tweets user_name=nil, is_me=false
    page = 1
    while true
      if is_me
        tweets = auth_twitter.user_timeline(page: page, count: 5, tweet_mode: 'extended')
      else
        tweets = auth_twitter.user_timeline(user_name, page: page, count: 5, tweet_mode: 'extended')
      end
      tweets.each do |t|
        puts ""
        Printc.pair("Text", t.attrs[:full_text], :yellow, :white, 0.1)
        Printc.pair("Retweets", t.retweet_count, :yellow, :white, 0.1)
        puts ""
      end
    option = menu(
        "What do you prefer?",
        { 
            "More tweets": :more_tweets,
            "Return to menu": :exit,
        }
    )
      if option == :exit
        break
      elsif option == :more_tweets
        page += 1
      end
    end
  end
end