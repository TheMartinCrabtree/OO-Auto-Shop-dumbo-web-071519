class CarOwner

  attr_reader :name
  @@all=[]

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def cars_owned
    Car.all.select do |car|
      car.owner == self
    end
  end

  def goes_to_mechanic
    owned_cars = self.cars_owned
    owned_cars.map do |car|
      car.mechanic
    end

  end

  def self.cars_per_owner

  end





end
