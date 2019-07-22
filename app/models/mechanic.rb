class Mechanic

  attr_reader :name, :specialty
  @@all=[]

def initialize(name, specialty)
  @name = name
  @specialty = specialty

  @@all << self
end

def self.all
  @@all
end

def cars_serviced
  car_list = Car.all.select do |car|
    car.mechanic == self
  end


end

def client_list
  cars = self.cars_serviced

  cars.map do |car|
    car.owner.name
  end.uniq
end

def client_list_by_name

end




end
