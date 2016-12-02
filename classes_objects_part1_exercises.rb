class MyCar
attr_accessor :color
attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def change_color(c)
    self.color = c
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

end

lumina = MyCar.new('2002', 'Red', 'Blazer')
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(10)
lumina.current_speed
lumina.shut_off
lumina.change_color('Blue')
puts lumina.color
puts lumina.year
