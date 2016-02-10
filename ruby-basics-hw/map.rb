names = ["jesse", "amanda"]
# mad_people = ["JESSE", "AMANDA"]
# mad_people = names.upcase


mad_people = names.map do |name|
  # add name.upcase to mad_people
  # mad_people.push(name.upcase)
  name.upcase
end

puts mad_people.inspect
