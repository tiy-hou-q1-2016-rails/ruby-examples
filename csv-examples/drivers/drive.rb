require 'CSV'

rows = []

CSV.foreach('bad-drivers.csv', headers: true) do |row|
  rows << row.to_hash
end

result = rows.select do |row|
  row["State"] == "Texas"
end

# Connecticut: 10.8
#
# result.each do |row|
#   puts "#{row["State"]}: #{row["Number of drivers involved in fatal collisions per billion miles"]}"
# end

# top 10 states in death by 'distraction'

sorted_rows = rows.sort_by do |row|
  row["Percentage Of Drivers Involved In Fatal Collisions Who Were Not Distracted"].to_f
end

top_ten = sorted_rows.take(10)

puts "Percentage of deaths by people who WERE distracted"
top_ten.each do |row|

  percentage_who_werent = row["Percentage Of Drivers Involved In Fatal Collisions Who Were Not Distracted"].to_f
  percentage_who_were = 100 - percentage_who_werent

  puts "#{row["State"]}: #{percentage_who_were}"
end

by_premiums = rows.sort_by do |row|
  row["Car Insurance Premiums ($)"].to_f
end

puts ""
puts "============"
puts "Cheapest to drive: #{by_premiums.first["State"]} - #{by_premiums.first["Car Insurance Premiums ($)"]}"
puts "Most expensive to drive: #{by_premiums.last["State"]} - #{by_premiums.last["Car Insurance Premiums ($)"]}"
