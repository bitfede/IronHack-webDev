class CarDealer
	def initialize(inventory)
		@inventory = inventory
	end

	def print_inventory()
		inv = ""
		@inventory.each do |key, value|
			print key.to_s + ": " 
			@inventory[key].each {|model| print model + " "}
			print "\n"
		end

	end

end