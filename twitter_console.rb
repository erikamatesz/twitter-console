require 'readline'

Dir["./helpers/*.rb"].each { |file| require file }
Dir["./commands/*.rb"].each { |file| require file }
Dir["./config/*.rb"].each { |file| require file }

puts `clear`

while true

    command = menu(
        "What would you like to do?",
        { 
            "Tweet something": :new_tweet,
            "My profile": :profile,
            "Somebody else's profile": :other_profile,
            "Search": :search,
            "Help": :help,
            "Sair": :exit
        }
    )
    
    case command
    when :new_tweet
        puts "New tweet"
    when :profile
        puts "My profile"
    when :other_profile
        puts "Somebody else's profile"
    when :search
        puts "Search"
    when :help
        puts "Help"
    when :exit
        puts "Exit"
        break
    end
end