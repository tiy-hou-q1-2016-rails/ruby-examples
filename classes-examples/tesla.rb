# 1: defines the object's behavior (its methods)
# 2: defines the object's data (its variables / attributes)

class Tesla
  attr_accessor :speed, :car_mode

  def initialize(car_mode)
    self.speed = 0
    self.car_mode = car_mode
  end

  def accelerate
    # start the car?
    # change its speed
    if self.car_mode == :normal_mode
      self.speed += 10
    else
      self.speed += 50
    end
  end

  def stop
    self.speed = 0
  end
end



one = Tesla.new(:normal_mode)
two = Tesla.new(:insane_mode)

[one, two].each do |car|
  puts "--------------------"
  puts car.inspect
  puts "Speed: #{car.speed}"
  3.times do
    puts "Accelerate!"
    car.accelerate
    puts "Speed: #{car.speed}"
  end
  puts "stahp!"
  car.stop
  puts "Speed: #{car.speed}"
  puts car.inspect

end
