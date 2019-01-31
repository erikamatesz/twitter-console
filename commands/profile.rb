require 'readline'

module TweetConsole
    def self.profile
    
        while true

            user = auth_client.user

            TweetConsole::user_info(user)

            option = menu(
                "What do you prefer?",
                { 
                    "Search something else": :search,
                    "Return to menu": :exit,
                }
            )

            if option == :exit
                break
            end

        end

    end
end