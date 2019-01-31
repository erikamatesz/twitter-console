require 'readline'

module TweetConsole
    def self.search

        while true
            Printc.title "What would you like to search?", :green, 1, true
            option = Readline.readline("►► ")
            tweets = auth_twitter.search("#{option} -rt", count: 10, tweet_mode: 'extended', result_type: "recent").take(10)

            tweets.each do |t|
                puts ""
                Printc.pair("Text", t.attrs[:full_text], :yellow, :white, 0.1)
                Printc.pair("User", t.user.name, :yellow, :white, 0.1)
                Printc.pair("Retweets", t.retweet_count, :yellow, :white, 0.1)
                puts ""
            end

            option = menu(
                "What do you prefer?",
                { 
                    "Search something else": :search,
                    "Return to menu": :exit,
                }
            )

            break if option == :exit
            

        end
    end
end