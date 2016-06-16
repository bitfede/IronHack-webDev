class WheelPrinter
	def initialize(vehicles)
		@vehicles = vehicles
	end

	def printAllWheels
		tot = 0
		@vehicles.each do |vehicle|
			tot = tot + vehicle.number_of_wheels
		end
		print "Total number of wheels: "
		puts tot
		tot
	end

end