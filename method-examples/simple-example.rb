def shout(first_name, activity)
  words = [first_name, activity].join(" - ")
  words = words.upcase
  words
end

def actually_say_the_words(sentence)
  system("say -v ralph #{sentence}")
end

def show_menu
  puts "==========================="
  puts "|Welcome to the yellanator|"
  puts "==========================="
end

def get_user_input
  puts ""
  puts "What would you like me to yell?"
  gets.chomp
end

def should_quit_it
  puts "Want to quit? (y/n)"
  choice = gets.chomp
  if choice == "y"
    return true
  else
    return false
  end
end

def play_game

  continue_playing = true
  while(continue_playing) do
    show_menu
    input = get_user_input
    words = shout(input, "says YOU")
    actually_say_the_words(words)
    
    if (should_quit_it)
      continue_playing = false
    end
  end

end

play_game
