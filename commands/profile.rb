require 'readline'

module TweetConsole
    def self.profile
    
        while true

            user = auth_twitter.user

            TweetConsole::user_info(user)

            option = menu(
                "What do you prefer?",
                { 
                    "Search something else": :search,
                    "Return to menu": :exit,
                }
            )

            if option == :search
                TweetConsole::search
                break
            elsif option == :exit
                break
            end

        end

    end
end