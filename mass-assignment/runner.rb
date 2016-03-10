require './recipe'
puts "oh hai"

# tacos = Recipe.new
# tacos.name = "Tacos"
# tacos.directions = "Buy them"
# tacos.category = "Delicious"

tacos = Recipe.new name: "Tacos", directions: "Buy Them", category: "Delicious"


salad = Recipe.new
salad.name = "Salad"
salad.directions = "Trade tears for salad"
salad.category = "Veggie"

puts [tacos, salad].inspect


[tacos, salad].each do |recipe|
    puts recipe.format_outout
  puts recipe.send(:format_outout)
end
