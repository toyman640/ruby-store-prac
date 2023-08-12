class Car
  def initialize(name, model, engine, year)
    @name = name
    @model = model
    @engine = engine
    @year = year
  end
  
  attr_accessor :name, :model, :engine, :year

  def talk(name, engine)
    puts "The car name is #{name} and it uses a #{engine} engine"
  end
end