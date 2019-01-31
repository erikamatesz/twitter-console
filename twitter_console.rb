Dir["./helpers/*.rb"].each {|file| require file }
Dir["./commands/**/*.rb"].each {|file| require file }
Dir["./config/*.rb"].each {|file| require file }

puts `clear`

begin
  while true
    command = menu(
      "What would you like to do?",
      {
        "Tweet something": :new_tweet,
        "My profile": :profile,
        "Somebody else's profile": :other_profile,
        "Search": :search,
        "Help": :help,
        "Exit": :exit
      }
    )

    case command
    when :new_tweet
        TweetConsole::new_tweet
    when :profile
        TweetConsole::profile
    when :other_profile
        TweetConsole::other_profile
    when :search
        TweetConsole::search
    when :help
        TweetConsole::help
    when :exit
        Printc.title "Bye bye ❤", :yellow, 2, true
        break
    end
  end
rescue Interrupt => e
  Printc.title "Bye bye ❤", :yellow, 2, true
end