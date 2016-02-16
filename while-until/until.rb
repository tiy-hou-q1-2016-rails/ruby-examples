
user_wants_to_quit = false

until user_wants_to_quit do

  puts "do you want to quit? Enter 'quit' to quit"
  user_wants_to_quit = gets.chomp == "quit"
end
