#
# counter = 0
#
# while (counter < 10) do
#   puts "oh hai #{counter}"
#   counter += 1
# end


choice = ""

until (["quit", "q"].include? choice) do

  puts "do you want to quit? Enter 'quit or q' to quit"
  choice = gets.chomp.downcase
end
