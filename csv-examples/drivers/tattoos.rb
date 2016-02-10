#What is the percentage of NBA players with tattoos
require 'CSV'

players = []
CSV.foreach('tattoos.csv', headers: true) do |row|
  players << row.to_hash
end

# filter all the yesses and get a count
tatted_up = players.select do |player|
  player["Tattoos yes/no"] == "yes"
end

# count of yes / count of total
yes_count = tatted_up.count
total_count = players.count

number =  yes_count.to_f / total_count.to_f

puts "#{(number * 100).round(2)}% of players have tattoos"
