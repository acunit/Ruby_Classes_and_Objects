class Vehicle
  def initialize
    puts "What year is your vehicle"
    @model_year = gets.chomp.to_i
    puts "What is the model of your vehicle"
    @model = gets.chomp
    @lights = "off"
    @signal = "off"
  end

  def model_year
    @model_year
  end

  def model
    @model
  end

  def lights
    @lights
  end

  def lights_on?
    if @lights == "off"
      false
    else
      true
    end
  end

  def lights_on
    if @lights == "off"
      @lights = "on"
    else
      @lights = "off"
    end
  end

  def signal?
    if @signal == "left"
      puts "left"
    elsif @signal == "right"
      puts "right"
    else
      puts "off"
    end
  end

  def signal_left
    @signal = "left turn signal on"
  end

  def signal_right
    @signal = "right turn signal on"
  end

  def signal_off
    @signal = "turn signal off"
  end

end

# my_vehicle = Vehicle.new("2017")

class Car < Vehicle
  def initialize
    super
    @wheels = 4
    @speed = 0
  end
  def wheels
    @wheels.to_s + " wheels"
  end
  def speed
    @speed.to_s + " km/h"
  end
end

# my_car = Car.new

class Tesla < Car
  def initialize
    super
  end
  def accel
    @speed = @speed + 10
  end
  def brake
    @speed = @speed - 7
  end
end

# my_tesla = Tesla.new

class Tata < Car
  def initialize
    super
  end
  def accel
    @speed = @speed + 2
  end
  def brake
    @speed = @speed - 1.25
  end
end

# my_tata = Tata.new

class Toyota < Car
  def initialize
    super
  end
  def accel
    @speed = @speed + 7
  end
  def brake
    @speed = @speed - 5
  end
end

tata1 = Tata.new
tata2 = Tata.new
tesla1 = Tesla.new
tesla2 = Tesla.new
toyota1 = Toyota.new
toyota2 = Toyota.new

garage = []

garage << [tata1], [tata2], [toyota1], [toyota2], [tesla1], [tesla2]

garage.shuffle!

puts garage.sort_by! { |a| [a.class.to_s, a.model_year] }

# my_toyota = Toyota.new
