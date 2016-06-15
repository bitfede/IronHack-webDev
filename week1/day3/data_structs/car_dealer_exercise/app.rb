require_relative('lib/CarDealer.rb')

cars = {
	:Ford 		=> ["Fiesta", "Focus", "Mustang", "F105 Pickup"],
	:Honda 		=> ["Civic", "CR-V", "Accord"],
	:BMW 			=> ["M3", "i8", "X6"],
	:Mercedes => ["ML350", "C300", "SLK"],
	:Toyota		=> ["Corolla" , "Camry", "Prius"]
}

FedeDealer  = CarDealer.new(cars)

FedeDealer.print_inventory