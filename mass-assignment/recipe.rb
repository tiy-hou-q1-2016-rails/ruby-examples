class Recipe
  attr_accessor :name, :directions, :category

  def initialize(args={})
    # self.name = args[:name]
    # self.directions = args[:directions]
    # self.category = args[:category]

    args.each do |key, value|
      # puts "key is #{key} | value is #{value}"
      send("#{key}=", value)
    end
  end

  def format_outout
    "I am a #{name}. You make me by #{directions}"
  end
end
