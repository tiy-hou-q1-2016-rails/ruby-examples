list = []

list << {name: "a", color: "red"}
list << {name: "b", color: "green"}
list << {name: "c", color: "blue"}
list << {name: "c", color: "blue"}
list << {name: "c", color: "blue"}

# [{:name=>"a", :color=>"red"}, {:name=>"b", :color=>"green"}, {:name=>"c", :color=>"blue"}, {:name=>"c", :

# get count of blue
matching = list.select {|item| item[:color] == "blue"}
puts matching.count

# ["C-BLUE", "B-GREEN"]

values =  list.map { |item| "#{item[:name]}-#{item[:color]}".upcase }
print values.uniq


# numbers = (1..100).to_a
# even_numbers = numbers.select {|i| i.even? }
# print even_numbers
