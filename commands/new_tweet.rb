require 'readline'

module TweetConsole
    def self.new_tweet

        while true
        
            Printc.title "Say something:", :green, 1, true
            option = Readline.readline("►► ")

            auth_twitter.update("#{option}")

        option = menu(
            "What do you prefer?",
            { 
                "Tweet again": :new_tweet,
                "Return to menu": :exit,
            }
        )

        if option == :new_tweet
            TweetConsole::new_tweet
            break
        elsif option == :exit
            break
        end
        

        end

        

    end
end