puts "Oh hai. What's Your name?"
name = gets.chomp

puts "What number do you want me to square?"
number = gets.chomp.to_i

# puts name.class # String
# puts number.class # Fixnum

if number >= 100
  puts "LAME"
elsif number == 7
  puts "LUCKY NUMBER 7"
elsif number < 0
  puts "you have chosen a negative number LAME."
else
  answer = number * number
  puts name + " your answer is " + answer.to_s
end

# BUG REPORTS
### yell at user if they ask for > 100
