module TweetConsole
    def self.other_profile

        while true
            Printc.title "Which user would you like to see?", :green, 1, true
            user_name = Readline.readline("►► ")
            u = auth_twitter.user(user_name)
            TweetConsole::user_info(u)
            option = menu(
                "What do you prefer?",
                { 
                    "Return to menu": :exit,
                    "Search another user": :other_profile,
                    "Read user's tweets": :tweets
                }
            )

            if option == :tweets
                TweetConsole::list_tweets(user_name)
                break
            elsif option == :exit
                break
            end


        end


    end
end