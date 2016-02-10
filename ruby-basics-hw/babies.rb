
array = [
  "newborn",
  "toddler",
  "terrible-twos",
  "terrible-threes",
  "best-age-ever",
  "kindergarten"
]

the_first_entry = array[array.count - 1]
the_first_entry = array[-1]
the_first_entry = array.last

puts array.inspect

puts "array has #{array.count} entries"
puts "first entry is #{the_first_entry}"
