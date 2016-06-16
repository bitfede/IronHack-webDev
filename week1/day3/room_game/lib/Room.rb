class Room 
	attr_accessor :name, :description, :connections
	def initialize(roomName, description, connections)
		@name = roomName
		@description = description
		#store how the room is connected to what
		@connections =  connections
		@obj = []
	end

	def populateObj(objects)
		#populate the room with objects
		@obj = objects.map do |object|  
			object
		end
		#puts @obj
	end

	def displayob
		puts ""
		print "Objects around you: \t"
		@obj.each do |k,v|
			print k.to_s + "   "
		end
		puts ""
	end

	def interact(object)
		interacted = false
		@obj.each do |k, v|
			if object == k.to_s
				interacted = true
				puts v
				if (object == "car" || object == "fence")
					puts "YOU ESCAPED!!!"
					puts "congratulations, your intuition got you out of trouble"
					exit
				elsif (object == "alarm button" || object == "vodka")
					puts "YOU GOT CAUGHT BY THE UKRANIAN MOB"
					puts "GAME OVER"
					exit
				end
			else
				#do nothing
			end
		end
		interacted
	end


end