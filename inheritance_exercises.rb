module Moveable
  def moving
    puts "This truck can be used to help move homes."
  end
end

class Vehicle

  attr_accessor :color
  attr_reader :year
  attr_reader :model
  attr_reader :name

    @@total_vehicle_objects = 0

    def initialize(y, c, m, n)
      @year = y
      @color = c
      @model = m
      @name = n
      @current_speed = 0
      @@total_vehicle_objects += 1
    end

    def self.total_vehicle_objects
      "This program has created #{@@total_vehicle_objects} vehicles."
    end

    def gas_mileage(mi, ga)
      puts "#{mi / ga} miles per gallon of gas."
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
    "#{name} is a #{color} #{model} made in #{year}."
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year.to_i
  end
end

class MyCar < Vehicle
  TIRES = "Firestone"
end

class MyTruck < Vehicle
  TIRES = "Michelin"
  include Moveable
end

class Student

  attr_accessor :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(comp)
    grade > comp.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new('Joe', 90)
ryan = Student.new('Ryan', 80)
puts "Well done!" if joe.better_grade_than?(ryan)
