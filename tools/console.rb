require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


owner1 = CarOwner.new("Ross")
owner2 = CarOwner.new("Janet")
owner3 = CarOwner.new("Franco")
owner4 = CarOwner.new("Jason")

mechanic1 = Mechanic.new("Mechanic 1", "antique")
mechanic2 = Mechanic.new("Mechanic 2", "exotic")
mechanic3 = Mechanic.new("Mechanic 3", "clunker")


car1 = Car.new("Toyota", "carolla", "clunker", owner1, mechanic3)
car2 = Car.new("Ford", "pinto", "clunker", owner2, mechanic3)
car3 = Car.new("Mercedes", "300sl", "antique", owner3, mechanic1)
car4 = Car.new("Honda", "CTX", "clunker", owner4, mechanic3)
car5 = Car.new("Lotus", "exige", "exotic", owner1, mechanic2)

#### testing
owner1cars = owner1.cars_owned
mechanics_owner1 = owner1.goes_to_mechanic
car_class = Car.car_classifications
mechanic_special = Car.qualified_mechanic("clunker")

car_list = mechanic1.cars_serviced
car_owner_list = mechanic3.client_list

binding.pry
