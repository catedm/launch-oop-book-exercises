module Example
  def speak
    puts "arf!"
  end
end

class NewObject
  include Example
end

my_obj = NewObject.new
my_obj.speak
