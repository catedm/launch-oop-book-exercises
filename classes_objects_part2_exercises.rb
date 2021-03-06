class MyCar

attr_accessor :color
attr_reader :year
attr_reader :model

def self.gas_mileage(mi, ga)
  puts "#{mi / ga} miles per gallon of gas."
end

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas, and accelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the break, and decelerate to #{@current_speed} mph."
  end

  def shut_off
    @current_speed = 0
    puts "You shut the car off, and are now going #{@current_speed} mph."
  end

  def to_s
    "This car is a #{color} #{model} made in #{year}."
  end

end

rachel = MyCar.new('2010', 'Black', 'Sedan')
lumina = MyCar.new('2002', 'Red', 'Blazer')
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(10)
lumina.current_speed
lumina.shut_off
lumina.color = "Blue"
lumina.spray_paint("Ocean Green")
puts lumina.color
puts lumina.year
puts MyCar.gas_mileage(351, 13)
puts lumina
puts rachel
