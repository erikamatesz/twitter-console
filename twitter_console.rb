require 'readline'

Dir["./helpers/*.rb"].each { |file| require file }
Dir["./commands/*.rb"].each { |file| require file }
Dir["./config/*.rb"].each { |file| require file }

puts `clear`

while true
    puts "What would you like to do?"
    puts "0) Tweet something"
    puts "1) My profile"
    puts "2) Somebody else's profile"
    puts "3) Search"
    puts "4) Help"
    puts "5) Exit"

    option = Readline.readline("►► ")

    options = [:new_tweet, :profile, :other_profile, :search, :help, :exit]
    command = options[option.to_i]

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