require_relative("lib/Car.rb")
require_relative("lib/Motorcycle.rb")
require_relative("lib/Tank.rb")
require_relative("lib/NoisePrinter.rb")
require_relative("lib/WheelPrinter.rb")


car = Car.new
moto = Motorcycle.new
tank = Tank.new

vehicles = [car, moto, tank]

printerW = WheelPrinter.new(vehicles)
printerN = NoisePrinter.new(vehicles)

printerW.printAllWheels
puts "----------------"
printerN.printAllNoises
