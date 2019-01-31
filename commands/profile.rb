require 'readline'

module TweetConsole
    def self.profile
    
        while true

            user = auth_client.user

            Printc.title user.name, :green, 1, true

            puts ""

            Printc.pair("Tweets:", user.tweets_count, :blue, :white, 0.1)
            Printc.pair("Followers:", user.followers_count, :blue, :white, 0.1)
            Printc.pair("Profile Url:", user.url, :blue, :white, 0.1)
            Printc.pair("Description:", user.description, :blue, :white, 0.1) if user.description.empty?
            Printc.pair("Email:", user.email, :blue, :white, 0.1) if user.email.empty?
            Printc.pair("Language:", user.lang, :blue, :white, 0.1) if user.lang.empty?
            Printc.pair("Profile image:", user.profile_image_url, :blue, :white, 0.1) if user.profile_image_url.empty?
            Printc.pair("Account created at:", user.created_at, :blue, :white, 0.1)
            Printc.pair("Last Tweet:", user.status.text, :blue, :white, 4) if user.status

            puts ""

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