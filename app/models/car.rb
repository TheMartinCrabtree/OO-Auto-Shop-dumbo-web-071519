class Car

  attr_reader :make, :model, :owner, :mechanic, :classification
  @@all=[]

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic

    @@all << self
  end

  def self.all
    @@all
  end


  def self.car_classifications
    Car.all.map do |car|
      car.classification
    end.uniq
  end

  def self.qualified_mechanic(specialty_string)
    Mechanic.all.select do |mechanic|
      mechanic.specialty == specialty_string
    end
  end






end
