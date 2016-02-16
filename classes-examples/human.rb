class Human

  attr_accessor :first_name, :last_name

  # def initialize(first_name, last_name)
  #   self.first_name = first_name
  #   self.last_name = last_name
  # end

  def full_name
    [first_name, last_name].join(" ")
  end
end

# jwo = Human.new("Jesse", "Wolgamott")
jwo = Human.new
jwo.first_name = "Jesse"
jwo.last_name = "Wolgamott"
puts jwo.full_name
