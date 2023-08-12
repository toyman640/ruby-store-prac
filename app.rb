require_relative 'car'
require 'json'

class App
  attr_accessor :car

  def initialize
    @cars = []
  end

  def list_cars
    puts "List of cars"
    @cars.each_with_index do |car, index|
      puts "#{index}) Name: \"#{car.name}\", Model: #{car.model}"
    end
  end

  def garage
    print 'Enter car name: '
    name = gets.chomp

    print 'Enter car model: '
    model = gets.chomp

    print 'Enter can engine type: '
    engine = gets.chomp

    print 'Enter can year of manufacture: '
    year = gets.chomp

    car = Car.new(name, model, engine, year)

    @cars << car
  end

  private

  def save_car_json
    car_data = @cars.map do |car|
      {
        name: car.name,
        model: car.model,
        engine: car.engine,
        year: car.year
      }
    end

    json_data = JSON.generate(car_data)

    File.open(storage/cars.json, 'w') do |file|
      file.write(json_data)
    end
  end
end