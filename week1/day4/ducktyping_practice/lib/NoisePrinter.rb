class NoisePrinter
	def initialize(vehicles)
		@vehicles = vehicles
	end

	def printAllNoises
		@vehicles.each do |vehicle| 
			print vehicle.class.to_s + ":  "
			puts vehicle.make_noise
		end	
	end

end