module TweetConsole
    def self.help
        Printc.title "Command list", :green, 1, true
        Printc.pair('Tweet something', 'Create a new tweet', :yellow, :white, 0.1)
        Printc.pair('My profile', 'Your own profile and tweets', :yellow, :white, 0.1)
        Printc.pair('Somebody else\'s profile', 'Another user\'s profile', :yellow, :white, 0.1)
        Printc.pair('Search', 'Search texts and hashtags', :yellow, :white, 0.1)
    end
end