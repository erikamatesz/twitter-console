require 'readline'

module TweetConsole
  def self.user_info user
    Printc.title user.name, :green, 1, true
​
    puts ""
​
    Printc.pair("Tweets:", user.tweets_count, :blue, :white, 0.1)
    Printc.pair("Followers:", user.followers_count, :blue, :white, 0.1)
    Printc.pair("Profile Url:", user.url, :blue, :white, 0.1)
    Printc.pair("Description:", user.description, :blue, :white, 0.1) if user.description.empty?
    Printc.pair("Email:", user.email, :blue, :white, 0.1) if user.email.empty?
    Printc.pair("Language:", user.lang, :blue, :white, 0.1) if user.lang.empty?
    Printc.pair("Profile image:", user.profile_image_url, :blue, :white, 0.1) if user.profile_image_url.empty?
    Printc.pair("Account created at:", user.created_at, :blue, :white, 0.1)
    Printc.pair("Last Tweet:", user.status.text, :blue, :white, 4) if user.status
​
    puts ""
  end
end