class Color
  attr_accessor :name, :color

  def initialize(name, color)
    self.name = name
    self.color = color
  end

  def format_yoself
    "#{name}-#{color}".upcase
  end
end

list = []

list << Color.new("a", "red")
list << Color.new("b", "green")
list << Color.new("c", "blue")
list << Color.new("c", "blue")
list << Color.new("c", "blue")

#1. only get the blue colors

blues = list.select do |item|
  # item[:color] == "blue"
  item.color == "blue"
end

print blues

puts "Start the other thing"

#2. ["C-BLUE", "B-GREEN", "A-RED"]

together = list.map do |item|
  item.format_yoself
end

together = list.map {|item| item.format_yoself }

together = list.map(&:format_yoself)

print together.uniq
