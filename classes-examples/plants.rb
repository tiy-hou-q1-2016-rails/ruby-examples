class Plant
  def breathe
    puts "[Plant] in comes the c02, out goes the oxygen"
  end
end

class Animal
  def breathe
    puts "[Animal] in comes the oxygen, out goes the c02"
  end
end

tree = Plant.new
jwo = Animal.new
50.times do
  tree.breathe
  jwo.breathe
end
